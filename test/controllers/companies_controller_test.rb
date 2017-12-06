require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get companies_url, as: :json
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post companies_url, params: { company: { billing_address_2: @company.billing_address_2, billing_state: @company.billing_state, billing_street_address: @company.billing_street_address, billing_zipcode: @company.billing_zipcode, company_name: @company.company_name, company_phone: @company.company_phone, is_active: @company.is_active, payment_terms: @company.payment_terms, shipping_address: @company.shipping_address, shipping_address_2: @company.shipping_address_2, shipping_city: @company.shipping_city, shipping_notes: @company.shipping_notes, shipping_state: @company.shipping_state, shipping_zipcode: @company.shipping_zipcode } }, as: :json
    end

    assert_response 201
  end

  test "should show company" do
    get company_url(@company), as: :json
    assert_response :success
  end

  test "should update company" do
    patch company_url(@company), params: { company: { billing_address_2: @company.billing_address_2, billing_state: @company.billing_state, billing_street_address: @company.billing_street_address, billing_zipcode: @company.billing_zipcode, company_name: @company.company_name, company_phone: @company.company_phone, is_active: @company.is_active, payment_terms: @company.payment_terms, shipping_address: @company.shipping_address, shipping_address_2: @company.shipping_address_2, shipping_city: @company.shipping_city, shipping_notes: @company.shipping_notes, shipping_state: @company.shipping_state, shipping_zipcode: @company.shipping_zipcode } }, as: :json
    assert_response 200
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete company_url(@company), as: :json
    end

    assert_response 204
  end
end
