require 'test_helper'

class ProjectControllerTest < ActionController::TestCase
  test "should get projectDetailsView" do
    get :projectDetailsView
    assert_response :success
  end

end
