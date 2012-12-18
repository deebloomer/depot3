require 'test_helper'

class RouteDetailsControllerTest < ActionController::TestCase
  setup do
    @route_detail = route_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:route_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create route_detail" do
    assert_difference('RouteDetail.count') do
      post :create, route_detail: { minutes_from_start: @route_detail.minutes_from_start, route_id: @route_detail.route_id, stop_id: @route_detail.stop_id, stop_name: @route_detail.stop_name, zone_no: @route_detail.zone_no }
    end

    assert_redirected_to route_detail_path(assigns(:route_detail))
  end

  test "should show route_detail" do
    get :show, id: @route_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @route_detail
    assert_response :success
  end

  test "should update route_detail" do
    put :update, id: @route_detail, route_detail: { minutes_from_start: @route_detail.minutes_from_start, route_id: @route_detail.route_id, stop_id: @route_detail.stop_id, stop_name: @route_detail.stop_name, zone_no: @route_detail.zone_no }
    assert_redirected_to route_detail_path(assigns(:route_detail))
  end

  test "should destroy route_detail" do
    assert_difference('RouteDetail.count', -1) do
      delete :destroy, id: @route_detail
    end

    assert_redirected_to route_details_path
  end
end
