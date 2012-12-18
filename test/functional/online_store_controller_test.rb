require 'test_helper'

class OnlineStoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get search_results" do
    get :search_results
    assert_response :success
  end

end
