class UsersController < ApplicationController
  def new
    @user = User.new
    @signin = OpenStruct.new
    @signin.email = nil
    @signin.password = nil
  end

  def log_in
    user = Authentication.find_by_email(params[:signin][:email])
    if user.password == params[:signin][:password]
      sign_in user
      if user.is_distributor
        @dis=Distributor.find(user.distributor_id)
        redirect_to @dis
      else
        redirect_to root_path
      end
    else
      redirect_to new_user_path
    end
  end

  def create
    params[:user][:dpic] = "/assets/ma2.png"
    @user = User.new(user_signup_params)
    if @user.save
      params[:user][:user_id] = @user.id
      params[:user][:distributor_id] = 27
      @authe = Authentication.new(authen_signup_params)
      if @authe.save
        sign_in @authe
        redirect_to edit_user_path(@user)
      else
        render 'new'
      end
    else
      render 'new'
    end
  end

  def index
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user= User.find(params[:id])
    if @user.update_attributes(user_profile_params)
      @auth = Authentication.find_by_remember_token(cookies[:remember_token])
      if @auth.update_attributes(authen_signup_params)
        sign_in @auth
        redirect_to @user
      else
        redirect_to edit_user_path(@current_user)
      end
    else
      redirect_to edit_user_path(@current_user)
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

  def image_display
    @image_data=Profile.find(params[:id])
    @image=@image_data.pic
    send_data(@image,:type=>@image_data.pictype,:disposition=>'inline')
  end

  private
  def user_signup_params
    params.require(:user).permit(:name,:email,:dpic)
  end

  def user_profile_params
    params.require(:user).permit(:name,:email,:phone,:flat_houseno,:area,:street,:city,:pin,:dpic,:pic)
  end

  def authen_signup_params
    params.require(:user).permit(:email,:password,:admin,:user_id,:distributor_id)
  end

end
