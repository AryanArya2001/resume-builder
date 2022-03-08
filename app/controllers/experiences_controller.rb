 class ExperiencesController < ApplicationController
   before_action :logged_in_user, only: [:update ,:new,:destroy]

   def new
       current_user.profile.experiences.create
       flash[:success] = "Experience added."
       redirect_to edit_url
   end
   def destroy
    puts '.....................................'
    experience = Experience.find_by({"id":params[:id]})
    experience.destroy
    redirect_to edit_url
end
   private
       def experience_params
           params.require(:experience).permit(:company, :position, :start, :end, 
           :projects_attributes => [:id , :name,:url,:tech_stack,:description],

           )
       end
 end

