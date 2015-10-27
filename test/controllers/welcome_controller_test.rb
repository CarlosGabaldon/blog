require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_template :index
    assert_response :success
    assert_routing '/', controller: 'welcome', action: 'index'
    assert_select "h1", "Welcome#index", "Missing Welcome Message"
  end


end
