require 'test_helper'

class AssistancesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get assistances_new_url
    assert_response :success
  end

  test "should get create" do
    get assistances_create_url
    assert_response :success
  end

end
