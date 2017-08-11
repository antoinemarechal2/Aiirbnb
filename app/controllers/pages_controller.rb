class PagesController < ApplicationController
   
        def home
            @problems= Problem.order("RANDOM()").limit(6)
        end
end