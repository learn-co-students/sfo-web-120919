class UsersController < ApplicationController
  before_action :authorized, except: [:new, :create]
  before_action :current_user, except: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else 
      # remember, if you want to use flash hash 
      # you must redirect_to a path instead of 
      # rendering an .erb template
      flash[:errors] = @user.errors.full_messages
      render :new
      # redirect_to signup_path # normally new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
    # byebug
  end

  def index
    @users = User.all
  end

  def destroy
    @current_user.destroy
    session[:user_id] = nil
    redirect_to home_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :password, :password_confirmation)
  end

end
