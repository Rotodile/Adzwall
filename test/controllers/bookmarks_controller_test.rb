require 'test_helper'

class BookmarksControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get bookmarks_update_url
    assert_response :success
  end

end
