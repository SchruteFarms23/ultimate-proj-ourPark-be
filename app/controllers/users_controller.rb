class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  def create
    user = User.new(name: params[:name],email: params[:email],password: params[:password],weight: params[:weight],height: params[:height],image_url: params[:image_url] )
    if user.save
      token = encode_token({user_id: user.id})
      render json: {user:user, jwt: token}
    else
    end
  end


  # private
  #
  # def user_params
  #   params.require(:user).permit(:name, :email, :password, :weight, :height, :image_url)
  # end





end
