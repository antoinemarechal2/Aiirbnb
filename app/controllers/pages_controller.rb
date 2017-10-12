class PagesController < ApplicationController
  def home
    @problems = Problem.order("RANDOM()").limit(3)
  end
  
  def search
    @search = Problem.ransack(params[:q])
    @problems = @search.result(distinct: true)
    @arrProblems = @problems.to_a
  end
  
  def about
  end
end