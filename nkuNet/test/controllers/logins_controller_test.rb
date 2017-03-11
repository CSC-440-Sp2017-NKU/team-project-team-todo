require 'test_helper'

class LoginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @login = logins(:one)
  end

  test "should get index" do
    get logins_url
    assert_response :success
  end

  test "should get new" do
    get new_login_url
    assert_response :success
  end

  test "should create login" do
    assert_difference('Login.count') do
      post logins_url, params: { login: { LoginTypes: @login.LoginTypes, active_flag: @login.active_flag, first_name: @login.first_name, last_name: @login.last_name, password: @login.password } }
    end

    assert_redirected_to login_url(Login.last)
  end

  test "should show login" do
    get login_url(@login)
    assert_response :success
  end

  test "should get edit" do
    get edit_login_url(@login)
    assert_response :success
  end

  test "should update login" do
    patch login_url(@login), params: { login: { LoginTypes: @login.LoginTypes, active_flag: @login.active_flag, first_name: @login.first_name, last_name: @login.last_name, password: @login.password } }
    assert_redirected_to login_url(@login)
  end

  test "should destroy login" do
    assert_difference('Login.count', -1) do
      delete login_url(@login)
    end

    assert_redirected_to logins_url
  end
end
