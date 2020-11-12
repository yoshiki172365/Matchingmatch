require 'test_helper'

class Q1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get q1_index_url
    assert_response :success
  end

end
