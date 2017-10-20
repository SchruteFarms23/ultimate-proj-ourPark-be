class ParksController < ApplicationController
  skip_before_action :authorized

  def index
    @parks = Park.all
    render json: @parks, status:200
  end

  def show
    @park = Park.find(params[:id ])
    if @park
      render json: @park, status:200
    end
  end

end
