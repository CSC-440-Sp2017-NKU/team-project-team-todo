require 'test_helper'

class LoginTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @login_type = login_types(:one)
  end

  test "should get index" do
    get login_types_url
    assert_response :success
  end

  test "should get new" do
    get new_login_type_url
    assert_response :success
  end

  test "should create login_type" do
    assert_difference('LoginType.count') do
      post login_types_url, params: { login_type: { description: @login_type.description, title: @login_type.title } }
    end

    assert_redirected_to login_type_url(LoginType.last)
  end

  test "should show login_type" do
    get login_type_url(@login_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_login_type_url(@login_type)
    assert_response :success
  end

  test "should update login_type" do
    patch login_type_url(@login_type), params: { login_type: { description: @login_type.description, title: @login_type.title } }
    assert_redirected_to login_type_url(@login_type)
  end

  test "should destroy login_type" do
    assert_difference('LoginType.count', -1) do
      delete login_type_url(@login_type)
    end

    assert_redirected_to login_types_url
  end
end
