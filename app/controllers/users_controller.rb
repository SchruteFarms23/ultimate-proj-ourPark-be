class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  def create
    user = User.new(name:params[:name], password:params[:password], email:params[:email])
    if user.save
      token = encode_token({user_id: user.id})
      render json: {user:user, jwt: token}
    else
    end
  end


end
