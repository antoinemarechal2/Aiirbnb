class PagesController < ApplicationController
   
        def home
            @problems= Problem.order("RANDOM()").limit(6)
        end

def search
    if params[:search].present? && params[:search].strip !=""
        session[:altr_search] = params[:search]
    end

    arrResult = Array.new
    
    if session[:altr_search] && session[:altr_search] != ""
        @problems_category = Problem.where(active: true)
    else
        @problems_category = Problem.where(active: true).all
    end

@search = @problems_category.ransack(params[:q])
@problems = @search.result

@arrProblems = @problem.to_a
end 
end