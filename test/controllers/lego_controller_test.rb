require "test_helper"

class LegoControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get lego_show_url
    assert_response :success
  end
end
