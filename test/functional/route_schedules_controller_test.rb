require 'test_helper'

class RouteSchedulesControllerTest < ActionController::TestCase
  setup do
    @route_schedule = route_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:route_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create route_schedule" do
    assert_difference('RouteSchedule.count') do
      post :create, route_schedule: { capacity: @route_schedule.capacity, departure_time: @route_schedule.departure_time, inbound: @route_schedule.inbound, integer: @route_schedule.integer, outbound: @route_schedule.outbound, stop_id: @route_schedule.stop_id }
    end

    assert_redirected_to route_schedule_path(assigns(:route_schedule))
  end

  test "should show route_schedule" do
    get :show, id: @route_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @route_schedule
    assert_response :success
  end

  test "should update route_schedule" do
    put :update, id: @route_schedule, route_schedule: { capacity: @route_schedule.capacity, departure_time: @route_schedule.departure_time, inbound: @route_schedule.inbound, integer: @route_schedule.integer, outbound: @route_schedule.outbound, stop_id: @route_schedule.stop_id }
    assert_redirected_to route_schedule_path(assigns(:route_schedule))
  end

  test "should destroy route_schedule" do
    assert_difference('RouteSchedule.count', -1) do
      delete :destroy, id: @route_schedule
    end

    assert_redirected_to route_schedules_path
  end
end
