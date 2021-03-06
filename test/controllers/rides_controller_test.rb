require 'test_helper'

class RidesControllerTest < ActionController::TestCase
  setup do
    @ride = FactoryGirl.create :ride
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ride" do
    assert_difference('Ride.count') do
      post :create, ride: { 
        arrival_address: @ride.arrival_address, 
        arrival_lat: @ride.arrival_lat, 
        arrival_lng: @ride.arrival_lng, 
        departure_address: @ride.departure_address, 
        departure_lat: @ride.departure_lat, 
        departure_lng: @ride.departure_lng, 
        departure_datetime: @ride.departure_datetime, 
        available_seats: @ride.available_seats, 
        comments: @ride.comments, 
        driver_id: @ride.driver_id 
      }
    end

    assert_redirected_to ride_path(assigns(:ride))
  end

  test "should show ride" do
    get :show, id: @ride
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ride
    assert_response :success
  end

  test "should update ride" do
    patch :update, id: @ride, ride: { 
      arrival_address: @ride.arrival_address, 
        arrival_lat: @ride.arrival_lat, 
        arrival_lng: @ride.arrival_lng, 
        departure_address: @ride.departure_address, 
        departure_lat: @ride.departure_lat, 
        departure_lng: @ride.departure_lng, 
        departure_datetime: @ride.departure_datetime, 
        available_seats: @ride.available_seats, 
        comments: @ride.comments, 
        driver_id: @ride.driver_id 
    }
    assert_redirected_to ride_path(assigns(:ride))
  end

  test "should destroy ride" do
    assert_difference('Ride.count', -1) do
      delete :destroy, id: @ride
    end

    assert_redirected_to rides_path
  end
end
