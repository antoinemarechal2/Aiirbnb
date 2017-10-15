class ResolutionsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @problem = Problem.find(params[:problem_id])
    @resolutions = Resolution.where(problem_id: params[:problem_id])
  end
  
  def new
    @problem = Problem.find(params[:problem_id])
    @resolution = Resolution.new
  end
  
  def create
    @resolution = current_user.resolutions.build(resolution_params)
    if @resolution.save
      AppMailer.new_resolution(Problem.find(@resolution.problem_id), @resolution).deliver_now
      redirect_to @resolution.problem, notice: "Merci pour votre preuve d'AltRuisme"
    else
      render :new
    end
  end
  
  def accept
    @resolution = Resolution.find(params[:id])
    @resolution.accepted!
    redirect_to :back, notice: "La proposition d'aide a bien été acceptée"
  end
  
  def refuse
    @resolution = Resolution.find(params[:id])
    @resolution.refused!
    redirect_to :back, notice: "La proposition d'aide a bien été refusée"
  end

  def your_helps
    @resolutions = current_user.resolutions.order('id DESC')
  end

  def your_resolutions
    @problems = current_user.problems
  end
  
  private

  def resolution_params         
    params.require(:resolution).permit(:problem_id, :proposition)     
  end 
end