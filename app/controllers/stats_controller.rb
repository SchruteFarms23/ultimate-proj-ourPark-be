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
    
    @game = Game.find(params[:game_id])
    @team_one = @game.teams[0]
    @team_two = @game.teams[1]
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
    @stat_one.update(points: params[:pointsOne], assists: params[:astsOne], rebounds: params[:rebsOne], blocks: params[:blksOne], steals: params[:stlsOne], threes: params[:threesOne])
    @stat_two.update(points: params[:pointsTwo], assists: params[:astsTwo], rebounds: params[:rebsTwo], blocks: params[:blksTwo], steals: params[:stlsTwo], threes: params[:threesTwo])
    @stat_three.update(points: params[:pointsThree], assists: params[:astsThree], rebounds: params[:rebsThree], blocks: params[:blksThree], steals: params[:stlsThree], threes: params[:threesThree])
    @stat_four.update(points: params[:pointsOneSec], assists: params[:astsOneSec], rebounds: params[:rebsOneSec], blocks: params[:blksOneSec], steals: params[:stlsOneSec], threes: params[:threesOneSec])
    @stat_five.update(points: params[:pointsTwoSec], assists: params[:astsTwoSec], rebounds: params[:rebsTwoSec], blocks: params[:blksTwoSec], steals: params[:stlsTwoSec], threes: params[:threesTwoSec])
    @stat_six.update(points: params[:pointsThreeSec], assists: params[:astsThreeSec], rebounds: params[:rebsThreeSec], blocks: params[:blksThreeSec], steals: params[:stlsThreeSec], threes: params[:threesThreeSec])
    @team_one.update(points:params[:scoreTeamOne])
    @team_two.update(points:params[:scoreTeamTwo])
    render json: @game, status:200

  end

end
