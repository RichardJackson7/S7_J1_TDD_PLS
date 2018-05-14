require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  
  test "should get root" do
    get home_index_path
    assert_response :success
  end

  test "should get all users" do
    get home_show_path
    assert_response :success
  end

  test "should get registration page" do
    get new_user_registration_path
    assert_response :success
  end

   test "should get edit page" do
    get edit_user_registration_path
    assert_response :success
  end

  test "should get session login page" do
    get new_user_session_path
    assert_response :success
  end



end
