class HomeController < ApplicationController
  def index
    @users = User.all.limit(6)
     @jobs = Job.all.limit(4)
  end

end
