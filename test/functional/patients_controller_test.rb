require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  def setup
    @location = locations(:one)
    @patient = patients(:one)
    @patient.location = @location
    @patient.save
  end

  test "should get location" do
    get :location, :id => @location.id
    assert_response :success
    assert_not_nil assigns(:location)

    @patient2 = patients(:two)
    @patient2.location = @location
    @patient2.save
    assert_equal(Patient.where(:location_id => @location.id).count, 2)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
    assert_equal(Patient.all.count, 3)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @patient.id
    assert_response :success
  end

  test "should get show" do
    get :show, :id => @patient.id
    assert_response :success
  end

  test "should update patient" do
    put :update, :id => @patient.id, :patient => {
      :first_name => "jenny"
    }
    assert_redirected_to patient_path(assigns[:patient])
  end

  test "should destroy patient" do
    assert_difference("Patient.all.count",-1) do
      delete :destroy, :id => @patient.id
    end
    assert_redirected_to patients_path
  end

end