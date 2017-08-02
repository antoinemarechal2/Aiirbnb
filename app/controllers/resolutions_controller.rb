class ResolutionsController < ApplicationController
 
def create
 
      @resolution = current_user.resolutions.create(resolution_params)       
      redirect_to @resolution.problem, notice: « Votre proposition de résolution du problème a été enregistrée » end
 
  
private
 
     def resolution_params         
        params.require(:resolution).permit(:problem_id)     
     end 
end