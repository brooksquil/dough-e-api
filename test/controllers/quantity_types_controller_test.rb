require 'test_helper'

class QuantityTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quantity_type = quantity_types(:one)
  end

  test "should get index" do
    get quantity_types_url, as: :json
    assert_response :success
  end

  test "should create quantity_type" do
    assert_difference('QuantityType.count') do
      post quantity_types_url, params: { quantity_type: { name: @quantity_type.name, quantity: @quantity_type.quantity } }, as: :json
    end

    assert_response 201
  end

  test "should show quantity_type" do
    get quantity_type_url(@quantity_type), as: :json
    assert_response :success
  end

  test "should update quantity_type" do
    patch quantity_type_url(@quantity_type), params: { quantity_type: { name: @quantity_type.name, quantity: @quantity_type.quantity } }, as: :json
    assert_response 200
  end

  test "should destroy quantity_type" do
    assert_difference('QuantityType.count', -1) do
      delete quantity_type_url(@quantity_type), as: :json
    end

    assert_response 204
  end
end
