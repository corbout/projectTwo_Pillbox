class PillboxesController < ApplicationController
  before_action :authenticate_user! # Must be logged in to access the pillbox page
  def index
    @pillboxes = Pillbox.where(user_id: current_user.id)
    @users = User.where(id: current_user.id)
  end

  def show
    @pillbox = Pillbox.find(params[:id])
    @users = User.where(id: current_user.id)
  end

  def new
    @pillbox = Pillbox.new
    @users = User.where(id: current_user.id)
  end

  def create
    @pillbox = Pillbox.new(pillbox_params)
    if @pillbox.save
      redirect_to home_index_path
    else
      render :new
    end
  end

  def edit
    @pillbox = Pillbox.find(params[:id])
  end

  def update
    @pillbox = Pillbox.find(params[:id])
    if @pillbox.update_attributes(pillbox_params)
      redirect_to home_index_path
    else
      render :edit
    end
  end

  def search
  end

  def destroy
    @pillbox = Pillbox.find(params[:id]).destroy
    redirect_to home_index_path
  end

  def pillbox_params
    params.require(:pillbox).permit(:user_id, :medication_name, :dosage, :frequency, :route, :indication, :prescribing_physician)
  end
end
