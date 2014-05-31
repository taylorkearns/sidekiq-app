class Translator
  module LanguageCode
    ICELANDIC      = "is"
    ARABIC         = "ar"
    FILIPINO       = "tl"
    HAITIAN_CREOLE = "ht"
    MALTESE        = "mt"
    YIDDISH        = "yi"
  end

  attr_reader :snippet_id

  def initialize(snippet_id)
    @snippet_id = snippet_id
  end

  def get_translation
    snippet = Snippet.find(snippet_id)
    ["icelandic", "arabic", "filipino",
     "haitian_creole", "maltese", "yiddish"].each do |target|
      translation = translate(snippet.english, target)
      snippet.public_send("#{target}=", translation)
    end

    snippet.save!
  end

  def translate(source, target)
    target_code = LanguageCode.const_get("#{target.upcase}")
    escaped_uri = URI.escape("https://www.googleapis.com/language/translate/v2?key=#{ENV["GOOGLE_TRANSLATE_API_KEY"]}&source=en&target=#{target_code}&q=#{source}")
    uri = URI(escaped_uri)
    response = JSON.parse(Net::HTTP.get(uri))
    response["data"]["translations"][0]["translatedText"]
  end
end
