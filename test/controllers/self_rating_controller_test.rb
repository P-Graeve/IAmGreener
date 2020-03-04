require 'test_helper'

class SelfRatingControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get self_rating_new_url
    assert_response :success
  end

  test "should get create" do
    get self_rating_create_url
    assert_response :success
  end

end
