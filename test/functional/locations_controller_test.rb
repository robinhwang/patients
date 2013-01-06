require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  def setup
    @location  = locations(:one)

  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locations)
    assert_equal(Location.all.count, 3)
  end

  test "should get show" do
    get :show, :id => @location.id
    assert_response :success
    assert_equal(@location.name, "Shanghai")
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @location.id
    assert_response :success
  end

  test "should create location" do
    assert_difference('Location.count') do
      post :create, :location => { :name => 'Beijing' }
    end

    assert_redirected_to location_path(assigns(:location))
    assert_equal("New location created", flash[:notice])
  end

  test "should update location" do
    put :update, :id => @location.id, :location => { :name => "Guangzhou"}
    assert_redirected_to location_path(assigns(:location))
  end

  test "should destroy location" do
    assert_difference("Location.count", -1) do
      delete :destroy, :id => @location.id
    end

    assert_redirected_to locations_path
  end


end
