class PhysiciansController < ApplicationController
    before_action :authenticate_user! # Must be logged in to access the physician page
  def index
    @physicians = Physician.where(user_id: current_user.id)
    @users = User.where(id: current_user.id)
  end

  def show
    @physician = Physician.find(params[:id])
    @users = User.where(id: current_user.id)
  end

  def new
    @physician = Physician.new
    @users = User.where(id: current_user.id)
  end

  def create
    @physician = Physician.new(physician_params)
    if @physician.save
      redirect_to home_index_path
    else
      render :new
    end
  end

  def edit
    @physician = Physician.find(params[:id])
  end

  def update
    @physician = Physician.find(params[:id])
    if @physician.update_attributes(physician_params)
      redirect_to home_index_path
    else
      render :edit
    end
  end

  def search
  end

  def destroy
    @physician = Physician.find(params[:id]).destroy
    redirect_to home_index_path
  end

  def physician_params
    params.require(:physician).permit(:title, :f_name, :l_name, :specialty, :address_line_one, :address_line_two, :city, :state, :zip, :country, :phone_number, :email, :user_id)
  end
end
