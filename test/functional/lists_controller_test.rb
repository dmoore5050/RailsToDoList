require 'test_helper'

class ListsControllerTest < ActionController::TestCase
  test "should get new" do
    get :index
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    get :index
    assert_response :success
  end

end
