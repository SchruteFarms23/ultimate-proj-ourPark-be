class UsersController < ApplicationController
  skip_before_action :authorized, only: [:index, :create,:update,:show,:destroy]


  def index
    @users = User.all
    render json: @users, status:200
  end

  def create
    @user = User.new(name: params[:name],email: params[:email],password: params[:password],weight: params[:weight],height: params[:height],image_url: params[:image_url] )
    if @user.save
      token = encode_token({user_id: @user.id})
      render json: {user:@user, jwt: token}, status:200
    else
      render json: {message:"Wrong Password or email"}
    end
  end

  def show
    @user = User.find(params[:id])
    if @user
      render json:@user, status:200
    end
  end

  def update
    # byebug
    @user = User.find(params[:user_id])
    @park = Park.find(params[:park_id])
    if !@user.park
      @park.users << @user
      render json: {user: ActiveModel::Serializer::UserSerializer.new(@user, each_serializer: UserSerializer)}, status:200
    else
      render json: {user: @user, errors: "You already belong to a park"}
    end
  end

  def destroy
    user = User.find(params[:user_id])
    park = Park.find(params[:park_id])
    park.users.delete(user)
    @user= User.find(params[:user_id])
    render json: {user:ActiveModel::Serializer::UserSerializer.new(@user, each_serializer: UserSerializer)}, status:200
end
  # private
  #
  # def user_params
  #   params.require(:user).permit(:name, :email, :password, :weight, :height, :image_url)
  # end





end
