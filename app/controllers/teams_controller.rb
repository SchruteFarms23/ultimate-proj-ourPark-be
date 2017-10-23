class TeamsController < ApplicationController
  skip_before_action :authorized

  def show
    @team = Team.find(params[:id])
    render json: @team, status:200
  end
end
