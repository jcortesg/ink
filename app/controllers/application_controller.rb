class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for (resource)
      type = resource._type  
      active = resource.active
    root_path
  end
end
