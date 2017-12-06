require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { company_id: @user.company_id, email: @user.email, first_name: @user.first_name, is_active: @user.is_active, is_admin: @user.is_admin, last_name: @user.last_name, mobile_phone: @user.mobile_phone, work_phone: @user.work_phone } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { company_id: @user.company_id, email: @user.email, first_name: @user.first_name, is_active: @user.is_active, is_admin: @user.is_admin, last_name: @user.last_name, mobile_phone: @user.mobile_phone, work_phone: @user.work_phone } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
