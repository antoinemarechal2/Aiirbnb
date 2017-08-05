class ResolutionsController < ApplicationController
 
def create
 
      @resolution = current_user.resolutions.create(resolution_params)   
      if @resolution.save
       AppMailer.new_resolution(Problem.find(@resolution.problem_id), @resolution).deliver_now
       redirect_to @resolution.problem, notice: "Merci pour votre preuve d'AltRuisme"
      end
      end
 
def your_helps
@helps = current_user.resolutions
end
  
def your_resolutions
@problems = current_user.problems
end
 
private
     def resolution_params         
        params.require(:resolution).permit(:problem_id)     
     end 
end