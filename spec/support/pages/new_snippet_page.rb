class NewSnippetPage
  include Capybara::DSL

  def open
    visit "/snippets/new"
  end

  def fill_out_form
    fill_in "Title", with: "New Snippet Title"
    fill_in "English", with: "This is some English text."
    click_on "Create Snippet"
  end
end
