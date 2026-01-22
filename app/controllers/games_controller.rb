class GamesController < ApplicationController
    def index
        games_list = Game.search(params[:query])

        render status: :ok, json: games_list
    end
end
