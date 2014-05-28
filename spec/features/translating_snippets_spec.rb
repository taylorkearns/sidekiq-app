require "spec_helper"

describe "Translating snippets" do
  it "translates a new snippet and saves the translation" do
    Sidekiq::Testing.inline!
    new_snippet_page.open
    new_snippet_page.fill_out_form
    expect(snippet_page.icelandic).to_not be_blank
  end

  def new_snippet_page
    @new_snippet_page ||= NewSnippetPage.new
  end

  def snippet_page
    @snippet_page ||= SnippetPage.new
  end
end
