require 'test_helper'

class SuperadminControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get superadmin_new_url
    assert_response :success
  end

  test "should get index" do
    get superadmin_index_url
    assert_response :success
  end

  test "should get edit" do
    get superadmin_edit_url
    assert_response :success
  end

end
