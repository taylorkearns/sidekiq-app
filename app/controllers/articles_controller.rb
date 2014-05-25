class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(article_params)
    redirect_to articles_url
  end

  private

  def article_params
    params.require(:article).permit([:title, :body])
  end
end
