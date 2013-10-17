class HomeController < ApplicationController
  def index
    @users = User.all.limit(6)
  end

end
