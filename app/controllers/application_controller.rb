class ApplicationController < ActionController::Base
  protect_from_forgery
  include UrlHelper

  def after_sign_in_path_for (resource)
  	type = resource._type
  	active = resource.active
  	if type && !active
      case type
      	when 'Model'
        	edit_akira_model_path(resource.id)
      	when 'Agent'
        	edit_akira_agent_path(resource.id)
        when 'profetional'
      end
    else
    	root_path
    end
  end
end
