require "test_helper"

class InvestmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investment = investments(:one)
  end

  test "should get index" do
    get investments_url, as: :json
    assert_response :success
  end

  test "should create investment" do
    assert_difference('Investment.count') do
      post investments_url, params: { investment: { company_id: @investment.company_id, investor_id: @investment.investor_id } }, as: :json
    end

    assert_response 201
  end

  test "should show investment" do
    get investment_url(@investment), as: :json
    assert_response :success
  end

  test "should update investment" do
    patch investment_url(@investment), params: { investment: { company_id: @investment.company_id, investor_id: @investment.investor_id } }, as: :json
    assert_response 200
  end

  test "should destroy investment" do
    assert_difference('Investment.count', -1) do
      delete investment_url(@investment), as: :json
    end

    assert_response 204
  end
end
