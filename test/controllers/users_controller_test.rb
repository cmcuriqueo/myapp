require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  #test "should get new" do
  #  get users_new_url
  #  assert_response :success
  #end

  def setup
    @user = users(:michael)
    @other_user = users(:archer)
  end
  test "should redirect following when not logged in" do
    get following_user_path(@user)
    assert_redirected_to login_url
  end

  test "should redirect followers when not logged in" do
    get followers_user_path(@user)
    assert_redirected_to login_url
  end
end
