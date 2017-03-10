require 'test_helper'

class QAndAsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @q_and_a = q_and_as(:one)
  end

  test "should get index" do
    get q_and_as_url
    assert_response :success
  end

  test "should get new" do
    get new_q_and_a_url
    assert_response :success
  end

  test "should create q_and_a" do
    assert_difference('QAndA.count') do
      post q_and_as_url, params: { q_and_a: { Logins: @q_and_a.Logins, active_flag: @q_and_a.active_flag, create_time: @q_and_a.create_time, q_a_text: @q_and_a.q_a_text, rating: @q_and_a.rating } }
    end

    assert_redirected_to q_and_a_url(QAndA.last)
  end

  test "should show q_and_a" do
    get q_and_a_url(@q_and_a)
    assert_response :success
  end

  test "should get edit" do
    get edit_q_and_a_url(@q_and_a)
    assert_response :success
  end

  test "should update q_and_a" do
    patch q_and_a_url(@q_and_a), params: { q_and_a: { Logins: @q_and_a.Logins, active_flag: @q_and_a.active_flag, create_time: @q_and_a.create_time, q_a_text: @q_and_a.q_a_text, rating: @q_and_a.rating } }
    assert_redirected_to q_and_a_url(@q_and_a)
  end

  test "should destroy q_and_a" do
    assert_difference('QAndA.count', -1) do
      delete q_and_a_url(@q_and_a)
    end

    assert_redirected_to q_and_as_url
  end
end
