class MoviesController < ApplicationController
    def index
        numbers = [1, 3, 5, 7]
        numbers.each do |number|
            puts number
        end

        @movies = Movie.all
        render json: @movies
    end
end
