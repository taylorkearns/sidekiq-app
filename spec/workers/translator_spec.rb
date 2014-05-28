require "spec_helper"

describe Translator do
  # Even though Sidekiq::Testing.fake! is set in spec_helper, I find
  # I have to set it explicitly here or else it will use Sidekiq::Testing.inline
  before do
    Sidekiq::Testing.fake!
  end

  describe ".perform_async" do
    it "translates the snippet and commits the translation" do
      snippet = create :snippet, english: "This is test text in English."
      expect { Translator.perform_async(snippet.id) }.to change(Translator.jobs, :size).by(1)
    end
  end
end
