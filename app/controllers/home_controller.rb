class HomeController < ApplicationController

	#before_action :authenticate_user!
	def index 
		url_parsed = URI.parse("http://limitless-spire-2426.herokuapp.com/projects.json")
		response = Net::HTTP.get_response(url_parsed)
		@test = response.body
		@test_one = JSON.parse(@test)
		@test_one.first
	end

end
