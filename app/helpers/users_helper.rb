module UsersHelper

  def sign_in(user)
    cookies.permanent[:remember_token]=user.remember_token
    self.current_user = user
  end

  def current_user=(user)
    @current_user = current_user
  end

  def current_user
    user = Authentication.find_by_remember_token(cookies[:remember_token])
    if(!user.nil?)
      if user.is_distributor
        @current_user ||= Distributor.find(user.distributor_id)
      else
        @current_user ||= User.find(user.user_id)
      end
    end
  end

  def is_distributor?
    user = Authentication.find_by_remember_token(cookies[:remember_token])
    user.is_distributor
  end

  def signedin?
    !current_user.nil?
  end


  def sign_out
    self.current_user=nil
    cookies.delete(:remember_token)
  end

end
