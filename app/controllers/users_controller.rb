class UsersController < ApplicationController
  before_action :authorize, only: [:index ]

  def index
    authorize
    @user = User.find(session[:user_id])

  end

  def new
  end

  def create 
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to users_path
    else
      render :new
    end
  end

  private 
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :avatar)
  end
end
