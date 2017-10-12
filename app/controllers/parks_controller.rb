class ParksController < ApplicationController

  def index
    @parks = Park.all
    render json: @parks, status:200
  end
end
