class Translator
  include Sidekiq::Worker

  def perform(snippet_id)
    snippet = Snippet.find(snippet_id)
    escaped_uri = URI.escape("https://www.googleapis.com/language/translate/v2?key=#{ENV["GOOGLE_TRANSLATE_API_KEY"]}&source=en&target=is&q=#{snippet.english}")
    uri = URI(escaped_uri)
    response = JSON.parse(Net::HTTP.get(uri))
    icelandic = response["data"]["translations"][0]["translatedText"]
    snippet.update_attributes!(icelandic: icelandic)
    logger.info "Snippet translated"
  end
end
