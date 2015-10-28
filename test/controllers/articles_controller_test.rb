require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  test "#index" do
    get :index
    assert assigns(:articles), "should return list of articles"
  end

  test "#show" do
    @article = Article.create title: "New Article", text: "New article text"
    get :show, id: @article
    assert_template :show
    assert_equal @article.id, assigns(:article).id
  end

  test "#new" do
    get :new
    assert_template :new
    assert_response :success
    assert_routing '/articles/new', controller: 'articles', action: 'new'
    assert_select 'form'
    assert_select 'label', 'Title'
    assert_select 'input'
    assert_select 'label', 'Text'
    assert_select 'textarea'
    assert_select "form input[type=submit][value='Create article']"
  end

  test "#create" do
    assert_difference 'Article.count' do
      post :create, article: {title: "Test", text: "Fun test"}
    end
    assert_redirected_to article_url(assigns(:article))
  end


end
