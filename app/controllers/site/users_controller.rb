class Site::UsersController < ApplicationController
  layout 'sites'

  def show
    begin
      @user = User.find_by(subdomain: request.subdomain)
    rescue Exception => e
      logger.warn "Unable to foo, will ignore: #{e}"
      redirect_to new_user_registration_path
    end
  end

end
