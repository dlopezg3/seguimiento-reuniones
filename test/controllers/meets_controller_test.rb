require 'test_helper'

class MeetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meets_index_url
    assert_response :success
  end

  test "should get show" do
    get meets_show_url
    assert_response :success
  end

  test "should get new" do
    get meets_new_url
    assert_response :success
  end

  test "should get create" do
    get meets_create_url
    assert_response :success
  end

  test "should get edit" do
    get meets_edit_url
    assert_response :success
  end

  test "should get update" do
    get meets_update_url
    assert_response :success
  end

end
