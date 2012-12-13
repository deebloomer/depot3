require 'test_helper'

class TicketsControllerTest < ActionController::TestCase
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tickets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket" do
    assert_difference('Ticket.count') do
      post :create, ticket: { cart_id: @ticket.cart_id, direction: @ticket.direction, finishing_bus_stop_id: @ticket.finishing_bus_stop_id, price: @ticket.price, random_ticket_code: @ticket.random_ticket_code, route_schedule_id: @ticket.route_schedule_id, starting_bus_stop_id: @ticket.starting_bus_stop_id, ticket_price_id: @ticket.ticket_price_id, travel_date: @ticket.travel_date, travel_time: @ticket.travel_time }
    end

    assert_redirected_to ticket_path(assigns(:ticket))
  end

  test "should show ticket" do
    get :show, id: @ticket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticket
    assert_response :success
  end

  test "should update ticket" do
    put :update, id: @ticket, ticket: { cart_id: @ticket.cart_id, direction: @ticket.direction, finishing_bus_stop_id: @ticket.finishing_bus_stop_id, price: @ticket.price, random_ticket_code: @ticket.random_ticket_code, route_schedule_id: @ticket.route_schedule_id, starting_bus_stop_id: @ticket.starting_bus_stop_id, ticket_price_id: @ticket.ticket_price_id, travel_date: @ticket.travel_date, travel_time: @ticket.travel_time }
    assert_redirected_to ticket_path(assigns(:ticket))
  end

  test "should destroy ticket" do
    assert_difference('Ticket.count', -1) do
      delete :destroy, id: @ticket
    end

    assert_redirected_to tickets_path
  end
end
