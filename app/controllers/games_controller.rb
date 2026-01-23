class GamesController < ApplicationController
    def index
        games_list = Game.search(params[:search])

        render status: :ok, json: games_list
    end
end
