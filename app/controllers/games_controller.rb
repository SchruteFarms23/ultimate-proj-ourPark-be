class GamesController < ApplicationController
  skip_before_action :authorized

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def active_games
    @park = Park.find(params[:park_id])
    @games = @park.games.where(active:"active")
    render json: @games, status: 200
  end

  def pending_games
    @park = Park.find(params[:park_id])
    @games = @park.games.where(active:"pending")
    render json: @games, status: 200
  end

  def change_to_active
    @game = Game.find(params[:game_id])
    @game.active = "active"
    @game.save
    render json: @game, status:200
  end

  def create
    @game = Game.new
    @park = Park.find(params[:park_id])
    if @park
      @game.park = @park
      @game.save
      @team_one = Team.new
      @team_two = Team.new
      @team_one.game = @game
      @team_two.game =@game
      @team_one.save
      @team_two.save
    render json: @game, status: 201
    end
  end

  def index
    @games = Game.all
    render json: @games, status:200

  end


  def destroy
    @park = Park.find(params[:park_id])
    @game = Game.find(params[:game_id])
    @park.games.delete(@game)
  end



end
