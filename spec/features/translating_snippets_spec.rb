require "spec_helper"

describe "Translating snippets" do
  Sidekiq::Testing.inline!

  it "translates a new snippet and saves the translation" do
    snippet = create :snippet
    expect(snippet.reload.icelandic).to_not be_nil
  end
end
