class SnippetsController < ApplicationController
  def index
    @snippets = Snippet.all.order("id desc")
  end

  def new
    @snippet ||= Snippet.new
  end

  def create
    @snippet = Snippet.new(snippet_params)
    if @snippet.save!
      Translator.new(@snippet.id).get_translation
      redirect_to snippet_path(@snippet.id)
    else
      render :new
    end
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  def edit
    @snippet = Snippet.find(params[:id])
  end

  def update
    @snippet = Snippet.find(params[:id])
    if @snippet.update_attributes!(snippet_params)
      Translator.new(@snippet.id).get_translation
      redirect_to snippet_path(@snippet.id)
    else
      render :edit
    end
  end

  private

  def snippet_params
    params.require(:snippet).permit([:title, :english, :icelandic])
  end
end
