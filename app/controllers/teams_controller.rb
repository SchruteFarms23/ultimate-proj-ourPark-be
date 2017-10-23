class TeamsController < ApplicationController
  skip_before_action :authorized

  def show
    @team = Team.find(params[:id])
    render json: @team, status:200
  end

  def add_user
    @team = Team.find(params[:team_id])
    @user = User.find(params[:user_id])
    if !@user.team
    @team.users << @user
    render json: @user
    else
    render json: {messages: "Player already belongs to a team"}
  end
end

end
