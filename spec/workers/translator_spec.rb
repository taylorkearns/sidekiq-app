require "spec_helper"

describe Translator do
  describe "#perform" do
    it "translates the snippet and commits the translation" do
      snippet = create :snippet, english: "This is test text in English."
      expect { Translator.perform_async(snippet.id) }.to change(Translator.jobs, :size).by(1)
    end
  end
end
