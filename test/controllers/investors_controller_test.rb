require "test_helper"

class InvestorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investor = investors(:one)
  end

  test "should get index" do
    get investors_url, as: :json
    assert_response :success
  end

  test "should create investor" do
    assert_difference('Investor.count') do
      post investors_url, params: { investor: { name: @investor.name } }, as: :json
    end

    assert_response 201
  end

  test "should show investor" do
    get investor_url(@investor), as: :json
    assert_response :success
  end

  test "should update investor" do
    patch investor_url(@investor), params: { investor: { name: @investor.name } }, as: :json
    assert_response 200
  end

  test "should destroy investor" do
    assert_difference('Investor.count', -1) do
      delete investor_url(@investor), as: :json
    end

    assert_response 204
  end
end
