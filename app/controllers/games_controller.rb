class GamesController < ApplicationController
  skip_before_action :authorized


  def active_games
    @park = Park.find(params[:park_id])
    @games = @park.games.where(active:"true")
    render json: @games, status: 200
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
    render json: {game:@game, team_one:@team_one, team_two:@team_two}
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

  def destroy
    @park = Park.find(params[:park_id])
    @game = Game.find(params[:game_id])
    @park.games.delete(@game)
  end



end