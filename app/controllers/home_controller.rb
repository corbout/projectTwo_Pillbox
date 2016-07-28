class HomeController < ApplicationController
  before_action :authenticate_user! # Must be logged in to access the home page
  def index
    @users = User.where(id: current_user.id)
    @pillboxes = Pillbox.where(user_id: current_user.id)
    @physicians = Physician.where(user_id: current_user.id)
  end


end
