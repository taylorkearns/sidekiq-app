class SnippetPage
  include Capybara::DSL

  def icelandic
    find("p.icelandic")
  end
end
