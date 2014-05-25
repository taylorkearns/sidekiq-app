class ArticleUpdater
  include Sidekiq::Worker

  def perform(article_id, attributes)
    article = Article.find(article_id)
    article.update_attributes(attributes)
  end
end
