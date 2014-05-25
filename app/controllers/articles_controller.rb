class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def update
    ArticleUpdater.perform_in(3.seconds, params[:id], article_params)
    redirect_to articles_url
  end

  private

  def article_params
    params.require(:article).permit([:title, :body])
  end
end
