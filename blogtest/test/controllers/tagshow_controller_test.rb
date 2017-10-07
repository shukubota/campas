require 'test_helper'

class TagshowControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tagshow_index_url
    assert_response :success
  end

end
