module UserHelper
	def twitter(user)
		begin
			
		rescue Exception => e
		
		end
	end
	def facebook(user)
		begin
			uri = URI.parse("https://graph.facebook.com/#{user}")
			req = Net::HTTP.get_response(uri)
			parsed_json = ActiveSupport::JSON.decode(req)
			p parsed_json
		rescue Exception => e
			p "se#{e}"
		end
		parsed_json
	end
	def instagram(user)
		begin
			
		rescue Exception => e
			
		end
	end
end