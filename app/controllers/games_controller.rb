class GamesController < ApplicationController
    def index
        games_list = Game.all

        render status: :ok, json: games_list
    end
end
