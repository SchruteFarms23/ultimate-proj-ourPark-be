class GamesController < ApplicationController
  skip_before_action :authorized

  def create
    @game = Game.create()
    @park = Park.find(params[:park_id])
    if @park
      @game.park = @park
    render json: @game
    end
  end

  def index
    @games = Game.all
    render json: @games, status:200

  end

  def show
    @game = Game.find(params[:id ])
    render json:{game: @game}, status:200
  end



end
