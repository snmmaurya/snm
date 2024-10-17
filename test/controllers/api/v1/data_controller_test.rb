require "test_helper"

class Api::V1::DataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_data_index_url
    assert_response :success
  end
end
