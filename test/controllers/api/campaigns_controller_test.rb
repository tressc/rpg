require 'test_helper'

class Api::CampaignsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_campaigns_create_url
    assert_response :success
  end

  test "should get destroy" do
    get api_campaigns_destroy_url
    assert_response :success
  end

  test "should get update" do
    get api_campaigns_update_url
    assert_response :success
  end

  test "should get show" do
    get api_campaigns_show_url
    assert_response :success
  end

  test "should get index" do
    get api_campaigns_index_url
    assert_response :success
  end

end
