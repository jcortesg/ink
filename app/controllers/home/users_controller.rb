class Home::UsersController < ApplicationController
  layout 'akira'

  def index
    @users = User.all
  end
end