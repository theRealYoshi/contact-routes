require 'byebug'
class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    #fail
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: @user

  end

  private
  def user_params
    params.require(:user).permit(:id, :username)
  end
  #
  # def update
  #   @cat = Cat.find(params[:id])
  #   if @cat.update(cat_params)
  #     render json: @cat
  #   else
  #     render json: @cat.errors.full_messages, status: :unprocessable_entity
  #   end
  # end
end
