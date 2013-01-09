require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  def setup
    @location = locations(:one)
    @patient = patients(:one)
    @patient.location_id = @location.id
  end


  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

end
