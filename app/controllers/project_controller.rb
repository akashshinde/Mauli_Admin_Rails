class ProjectController < ApplicationController
  def projectDetailsView
  	@id = params[:id]
  	url_parsed = URI.parse("http://limitless-spire-2426.herokuapp.com/flats/all_flats.json?id="+@id)
	response = Net::HTTP.get_response(url_parsed)
	@test = response.body
	@test_one = JSON.parse(@test)

  end
end
