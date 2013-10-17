class Site::SitesController < ApplicationController
	layout 'sites'
  def show
    begin
      @user = User.find_by(subdomain: request.subdomain)
      @books = @user.books.limit(3)
    rescue Exception => e
      logger.warn "Unable to foo, will ignore: #{e}"
      redirect_to new_user_registration_path
    end
  end


end