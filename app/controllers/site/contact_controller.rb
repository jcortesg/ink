class Site::ContactController < ApplicationController
	layout 'sites'
  def show
  	@user = User.find_by(subdomain: request.subdomain)
  end
end