require 'test_helper'

class RoutesControllerTest < ActionController::TestCase
  setup do
    @route = routes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:routes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create route" do
    assert_difference('Route.count') do
      post :create, route: { active: @route.active, arrival_address: @route.arrival_address, arrival_distance_range: @route.arrival_distance_range, arrival_lat: @route.arrival_lat, arrival_lng: @route.arrival_lng, departure_address: @route.departure_address, departure_distance_range: @route.departure_distance_range, departure_lat: @route.departure_lat, departure_lng: @route.departure_lng, start_time: @route.start_time, time_range_from: @route.time_range_from, time_range_to: @route.time_range_to, user_id: @route.user_id }
    end

    assert_redirected_to route_path(assigns(:route))
  end

  test "should show route" do
    get :show, id: @route
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @route
    assert_response :success
  end

  test "should update route" do
    patch :update, id: @route, route: { active: @route.active, arrival_address: @route.arrival_address, arrival_distance_range: @route.arrival_distance_range, arrival_lat: @route.arrival_lat, arrival_lng: @route.arrival_lng, departure_address: @route.departure_address, departure_distance_range: @route.departure_distance_range, departure_lat: @route.departure_lat, departure_lng: @route.departure_lng, start_time: @route.start_time, time_range_from: @route.time_range_from, time_range_to: @route.time_range_to, user_id: @route.user_id }
    assert_redirected_to route_path(assigns(:route))
  end

  test "should destroy route" do
    assert_difference('Route.count', -1) do
      delete :destroy, id: @route
    end

    assert_redirected_to routes_path
  end
end
