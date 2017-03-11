require 'test_helper'

class EnrolledClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enrolled_class = enrolled_classes(:one)
  end

  test "should get index" do
    get enrolled_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_enrolled_class_url
    assert_response :success
  end

  test "should create enrolled_class" do
    assert_difference('EnrolledClass.count') do
      post enrolled_classes_url, params: { enrolled_class: { Courses: @enrolled_class.Courses, Logins: @enrolled_class.Logins, active: @enrolled_class.active } }
    end

    assert_redirected_to enrolled_class_url(EnrolledClass.last)
  end

  test "should show enrolled_class" do
    get enrolled_class_url(@enrolled_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_enrolled_class_url(@enrolled_class)
    assert_response :success
  end

  test "should update enrolled_class" do
    patch enrolled_class_url(@enrolled_class), params: { enrolled_class: { Courses: @enrolled_class.Courses, Logins: @enrolled_class.Logins, active: @enrolled_class.active } }
    assert_redirected_to enrolled_class_url(@enrolled_class)
  end

  test "should destroy enrolled_class" do
    assert_difference('EnrolledClass.count', -1) do
      delete enrolled_class_url(@enrolled_class)
    end

    assert_redirected_to enrolled_classes_url
  end
end
