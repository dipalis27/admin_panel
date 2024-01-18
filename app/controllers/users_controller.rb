class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def index
     @users = User.all
     # redirect_to root_path, notice: 'Account created successfully!'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Log in the user after successful signup
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Account created successfully!'
    else
      render :new
    end
  end

  def show
    @article = User.find(params[:id])
  end

  private
   def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
