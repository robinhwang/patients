require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  fixtures :all
  def setup
  
  end



  test "surf the website" do
    @patient = patients(:one)
    @location = locations(:one)
    @patient.location = @location
    @patient.save
    get "/locations"
    assert_response :success

    get "/patients"
    assert_response :success

    get "/patients/new"
    assert_response :success

    post_via_redirect "/locations", location: {
      code: "012",
      name: "Hangzhou"
    }
    assert_response :success
    assert_equal("New location created", flash[:notice])
  end
end
