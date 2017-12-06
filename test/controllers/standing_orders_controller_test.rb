require 'test_helper'

class StandingOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @standing_order = standing_orders(:one)
  end

  test "should get index" do
    get standing_orders_url, as: :json
    assert_response :success
  end

  test "should create standing_order" do
    assert_difference('StandingOrder.count') do
      post standing_orders_url, params: { standing_order: { is_active: @standing_order.is_active, quantity: @standing_order.quantity, week_day: @standing_order.week_day } }, as: :json
    end

    assert_response 201
  end

  test "should show standing_order" do
    get standing_order_url(@standing_order), as: :json
    assert_response :success
  end

  test "should update standing_order" do
    patch standing_order_url(@standing_order), params: { standing_order: { is_active: @standing_order.is_active, quantity: @standing_order.quantity, week_day: @standing_order.week_day } }, as: :json
    assert_response 200
  end

  test "should destroy standing_order" do
    assert_difference('StandingOrder.count', -1) do
      delete standing_order_url(@standing_order), as: :json
    end

    assert_response 204
  end
end
