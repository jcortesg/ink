class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for (resource)
  	type = resource._type
  	active = resource.active
  	if type && !active
      case type
      	when 'Model'
        	edit_model_path(resource.id)
      	when 'Agent'
        	edit_agent_path(resource.id)
        when 'profetional'
      end
    else
    	root_path
    end
  end
end
