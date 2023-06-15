require "test_helper"

class Public::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get public_homes_about_url
    assert_response :success
  end

  test "should get home" do
    get public_homes_home_url
    assert_response :success
  end
end
