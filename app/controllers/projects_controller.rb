
class ProjectsController < ApplicationController
  before_action :logged_in_user, only: [:new,:destroy]
  def new
    current_user.profile.projects.create
    flash[:success] = "Projects added."
    redirect_to edit_url
  end


  def destroy
        project = Project.find_by({"id":params[:id]})
        project.destroy
        redirect_to edit_url
    end

end
