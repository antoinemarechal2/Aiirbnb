class ProblemsController < ApplicationController 

before_action :set_problem, only: [:show, :edit, :update]   
before_action :authenticate_user!, except: [:show]
    
    def index
      @rooms = current_user.problems 
    end
 
    def new
      @problem = current_user.problems.build
    end

    def create
      @problem = current_user.problems.build(problem_params)
    if @problem.save
      redirect_to @problem, notice:"Votre demande d'aide a été ajoutée avec succès" 
    else
     render :new # s’il y a une erreur, redirige vers la page de création new
    end
    end
 
 def show
 end
 
 def edit
 end
 
 def update
     if @problem.update(problem_params)
         redirect_to @problem, notice:"Modification enregistrée"
     else
         render :edit
     end
 end
 
   private
    def set_problem
      @problem = Problem.find(params[:id])
    end

    def problem_params
      params.require(:problem).permit(:problem_type, :category, :summary, :active)
    end
    
end