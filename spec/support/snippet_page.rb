class SnippetPage
  include Capybara::DSL

  def icelandic
    find("p.icelandic")
  end

  def arabic
    find("p.arabic")
  end

  def filipino
    find("p.filipino")
  end

  def haitian_creole
    find("p.haitian-creole")
  end

  def maltese
    find("p.maltese")
  end

  def yiddish
    find("p.yiddish")
  end
end
