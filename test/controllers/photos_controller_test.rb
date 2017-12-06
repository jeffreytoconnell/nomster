require 'test_helper'

class PhotosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get photos_new_url
    assert_response :success
  end

end
