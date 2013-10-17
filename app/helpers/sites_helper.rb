module SitesHelper
	def class_body(type)
		case type
		when "home/users"
			"user_bg"
		end
	end

	def bg_site(url)
		"url(#{url})"
	end
end
