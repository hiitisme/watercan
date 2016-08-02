class DistributorsController < ApplicationController
  before_action :set_distributor, only: [:show, :edit, :update, :destroy]

  # GET /distributors
  # GET /distributors.json
  def index
    @distributors = Distributor.all
  end

  # GET /distributors/1
  # GET /distributors/1.json
  def show
    
  end

  # GET / distributors/new
  def new
    @distributor = Distributor.new
  end

  # GET /distributors/1/edit
  def edit
  end

  # POST /distributors
  # POST /distributors.json
  def create
    @distributor = Distributor.new(distributor_params)
      if @distributor.save
        params[:distributor][:distributor_id] = @distributor.id
        params[:distributor][:password] = "Default"
        params[:distributor][:is_distributor] = "true"
        params[:distributor][:user_id] = current_user.id
        @authe_distributor = Authentication.new(authen_distributor_params)
        if @authe_distributor.save
          redirect_to @distributor
        else
          render 'new'
        end
      else
        render 'new'
      end

  end

  # PATCH/PUT /distributors/1
  # PATCH/PUT /distributors/1.json
  def update
    respond_to do |format|
      if @distributor.update(distributor_params)
        format.html { redirect_to @distributor, notice: 'Distributor was successfully updated.' }
        format.json { render :show, status: :ok, location: @distributor }
      else
        format.html { render :edit }
        format.json { render json: @distributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distributors/1
  # DELETE /distributors/1.json
  def destroy
    @distributor.destroy
    respond_to do |format|
      format.html { redirect_to distributors_url, notice: 'Distributor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distributor
      @distributor = Distributor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distributor_params
      params.require(:distributor).permit(:name,:email,:phone,:flat_houseno,:area,:city,:state,:country,:pin,:street)
    end

    def authen_distributor_params
      params.require(:distributor).permit(:email,:password,:is_distributor,:distributor_id,:user_id)
    end
end
