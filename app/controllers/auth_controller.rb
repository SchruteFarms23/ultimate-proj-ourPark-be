class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create,:index]

  def create
    @user= User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user:@user, jwt:token}
    else
      render json: {message: "Cant find user"}
    end
  end

  def get_user
    @user = current_user
    render json: @user, status:200
  end

end
