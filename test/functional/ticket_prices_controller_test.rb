require 'test_helper'

class TicketPricesControllerTest < ActionController::TestCase
  setup do
    @ticket_price = ticket_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticket_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket_price" do
    assert_difference('TicketPrice.count') do
      post :create, ticket_price: { no_of_zones: @ticket_price.no_of_zones, price: @ticket_price.price }
    end

    assert_redirected_to ticket_price_path(assigns(:ticket_price))
  end

  test "should show ticket_price" do
    get :show, id: @ticket_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticket_price
    assert_response :success
  end

  test "should update ticket_price" do
    put :update, id: @ticket_price, ticket_price: { no_of_zones: @ticket_price.no_of_zones, price: @ticket_price.price }
    assert_redirected_to ticket_price_path(assigns(:ticket_price))
  end

  test "should destroy ticket_price" do
    assert_difference('TicketPrice.count', -1) do
      delete :destroy, id: @ticket_price
    end

    assert_redirected_to ticket_prices_path
  end
end
