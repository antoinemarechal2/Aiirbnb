class PagesController < ApplicationController

def search
      if params[:search].present? && params[:search].strip != ""
         session[:altr_search] = params[:search]
      end
      
      arrResult = Array.new
      
      if session[:altr_search] && session[:altr_search] != ""
         @problems_address = Problem.category(active: true)
      else
         @rooms_address = Problem.all
      end
      
      @search = @category.ransack(params[:q])
      @problems = @search.result
      
   end
   
        def home
            @problems= Problem.order("RANDOM()").limit(6)
        end
end