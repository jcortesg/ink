class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def register
     
  end

  def create
  	binding.pry  
    redirect_to root_path
  end
  
end
