class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def dashboard_adm
    @projects = Project.all
    @volunteers = Volunteer.all
  end

  def dashboard_user
  end

end
