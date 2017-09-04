require 'test_helper'

class ModeratorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get moderators_new_url
    assert_response :success
  end

  test "should get edit" do
    get moderators_edit_url
    assert_response :success
  end

  test "should get index" do
    get moderators_index_url
    assert_response :success
  end

end
