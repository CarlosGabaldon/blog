require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_template :new
    assert_response :success
    assert_routing '/articles/new', controller: 'articles', action: 'new'
  end

  test "should display new form with fields" do
    get :new
    assert_select 'form'
    assert_select 'label', 'Title'
    assert_select 'input'
    assert_select 'label', 'Text'
    assert_select 'textarea'
    assert_select "form input[type=submit][value='Create article']"
  end

end
