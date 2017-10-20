class StatsController < ApplicationController
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

end
