class StatsController < ApplicationController
  skip_before_action :authorized
def index
    @stats = Stat.all
    render json: @stats, status:200
  end

  def show
    @stat = Stat.find(params[:id ])
    if @stat
      render json: @stat, status:200
    end
  end

  def update_stats
    byebug
    @game = Game.find(params[:game_id])
    @team_one = @game.teams[0]
    @eam_two = @game.teams[1]
    @player_one_id = @game.teams[0].users[0]
    @player_two_id = @game.teams[0].users[1]
    @player_three_id = @game.teams[0].users[2]
    @player_four_id = @game.teams[1].users[0]
    @player_five_id = @game.teams[1].users[1]
    @player_six_id = @game.teams[1].users[2]
    @stat_one = Stat.find_by(user_id: @player_one_id)
    @stat_two = Stat.find_by(user_id: @player_two_id)
    @stat_three = Stat.find_by(user_id: @player_three_id)
    @stat_four = Stat.find_by(user_id: @player_four_id)
    @stat_five = Stat.find_by(user_id: @player_five_id)
    @stat_six = Stat.find_by(user_id: @player_six_id)
    # @stat_one.update(points: params[:], assists: params[:], rebounds: params[:], blocks: params[:], steals: params[:], threes: params[:])
    # @stat_two.update(points: params[:], assists: params[:], rebounds: params[:], blocks: params[:], steals: params[:], threes: params[:])
    # @stat_three.update(points: params[:], assists: params[:], rebounds: params[:], blocks: params[:], steals: params[:], threes: params[:])
    # @stat_four.update(points: params[:], assists: params[:], rebounds: params[:], blocks: params[:], steals: params[:], threes: params[:])
    # @stat_five.update(points: params[:], assists: params[:], rebounds: params[:], blocks: params[:], steals: params[:], threes: params[:])
    # @stat_six.update(points: params[:], assists: params[:], rebounds: params[:], blocks: params[:], steals: params[:], threes: params[:])
    # @team_one.update(points:params[:])
    # @team_two.update(points:params[:])
    # render json: @game, status:200

  end

end
