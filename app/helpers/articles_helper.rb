module ArticlesHelper
  # Figure out how to make nested content_tag's work.. code is not working
  def form_errors(article)
    if article.errors.any?
      content_tag :div, id: "error_explanation" do
        content_tag :h2 do
          pluralize(article.errors.count, "error")
          concat("prohibited this article from being saved:")
        end
        content_tag :ul do
          article.errors.full_messages.each do |msg|
            content_tag :li do
              "msg"
            end
          end
        end
      end
    end
  end
end
