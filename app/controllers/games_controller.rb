class GamesController < ApplicationController
    def index
        games_list = Game.all

        render json: games_list
    end
end
