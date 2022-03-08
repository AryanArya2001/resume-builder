class EducationsController < ApplicationController
    before_action :logged_in_user, only: [:new,:destroy]

    def new
        current_user.profile.educations.create
        flash[:success] = "Education added."
        redirect_to edit_url
    end

    def destroy
        puts '.....................................'
        education = Education.find_by({"id":params[:id]})
        puts education
        education.destroy
        redirect_to edit_url
    end

end
