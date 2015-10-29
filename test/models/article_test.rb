require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "should validate the presence of title" do
    article = Article.new
    assert_not article.valid?
    assert_equal [:title], article.errors.keys
  end

  test "should validate title length is 5" do
    article = Article.new(title: "Test", text: "Fun test")
    assert_not article.valid?
    assert article.errors[:title].include?("is too short (minimum is 5 characters)")
  end
end
