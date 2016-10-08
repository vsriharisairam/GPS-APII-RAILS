require 'test_helper'

class GpsdsControllerTest < ActionController::TestCase
  setup do
    @gpsd = gpsds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gpsds)
  end

  test "should create gpsd" do
    assert_difference('Gpsd.count') do
      post :create, gpsd: { location: @gpsd.location }
    end

    assert_response 201
  end

  test "should show gpsd" do
    get :show, id: @gpsd
    assert_response :success
  end

  test "should update gpsd" do
    put :update, id: @gpsd, gpsd: { location: @gpsd.location }
    assert_response 204
  end

  test "should destroy gpsd" do
    assert_difference('Gpsd.count', -1) do
      delete :destroy, id: @gpsd
    end

    assert_response 204
  end
end
