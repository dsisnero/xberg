require "./spec_helper"

describe Xberg do
  describe "url" do
    it "extract_batch: mixed bytes and URL inputs share one output envelope" do
      __mock_base_inputs = ENV["MOCK_SERVER_URL_BATCH_MIXED_INPUTS"]? || (ENV["MOCK_SERVER_URL"]? || "") + "/fixtures/url_batch_mixed_inputs"
      __result = Xberg.extract_batch(Array(Xberg::ExtractInput).from_json(((__mock_input_inputs = "[{\"kind\":\"uri\",\"uri\":\"$mock_url\"},{\"bytes\":[66,97,116,99,104,32,98,121,116,101,115,32,99,111,110,116,101,110,116],\"filename\":\"inline.txt\",\"kind\":\"bytes\",\"mime_type\":\"text/plain\"}]"; __mock_input_inputs.gsub("$mock_url", __mock_base_inputs)))), Xberg::ExtractionConfig.from_json("{\"url\":{\"mode\":\"document\"}}"))
      # TODO: unsupported assertion `not_error`
      (__result.try(&.results).try(&.size) || 0).should be >=(2)
      __result.results.try(&.[0]).try(&.content).to_s.should contain("Batch URL document content")
      __result.results.try(&.[1]).try(&.content).to_s.should contain("Batch bytes content")
    end
    it "extract: crawl mode follows linked pages" do
      __mock_base_input = ENV["MOCK_SERVER_URL_CRAWL_LINKED_PAGES"]? || (ENV["MOCK_SERVER_URL"]? || "") + "/fixtures/url_crawl_linked_pages"
      __result = Xberg.extract(Xberg::ExtractInput.from_json((__mock_input_input = "{\"kind\":\"uri\",\"uri\":\"$mock_url\"}"; __mock_input_input.gsub("$mock_url", __mock_base_input))), Xberg::ExtractionConfig.from_json("{\"url\":{\"crawl\":{\"max_depth\":1,\"max_pages\":4,\"respect_robots_txt\":false},\"mode\":\"crawl\"}}"))
      # TODO: unsupported assertion `not_error`
      (__result.try(&.summary).try(&.pages_crawled) || 0).should be >= 2
      __result.results.try(&.[1]).try(&.content).to_s.should contain("About crawl target")
    end
    it "extract: website URL returns page content" do
      __mock_base_input = ENV["MOCK_SERVER_URL_HTML_PAGE_EXTRACT"]? || (ENV["MOCK_SERVER_URL"]? || "") + "/fixtures/url_html_page_extract"
      __result = Xberg.extract(Xberg::ExtractInput.from_json((__mock_input_input = "{\"kind\":\"uri\",\"uri\":\"$mock_url\"}"; __mock_input_input.gsub("$mock_url", __mock_base_input))), Xberg::ExtractionConfig.from_json("{\"url\":{\"mode\":\"document\"}}"))
      # TODO: unsupported assertion `not_error`
      __result.results.try(&.[0]).try(&.content).to_s.should contain("Xberg URL Page")
      (__result.try(&.results).try(&.size) || 0).should be >=(1)
    end
    it "extract: recursive URL extraction follows document links discovered in results" do
      __mock_base_input = ENV["MOCK_SERVER_URL_RECURSIVE_DOCUMENT_URLS"]? || (ENV["MOCK_SERVER_URL"]? || "") + "/fixtures/url_recursive_document_urls"
      __result = Xberg.extract(Xberg::ExtractInput.from_json((__mock_input_input = "{\"kind\":\"uri\",\"uri\":\"$mock_url\"}"; __mock_input_input.gsub("$mock_url", __mock_base_input))), Xberg::ExtractionConfig.from_json("{\"url\":{\"crawl\":{\"document_url_depth\":1,\"follow_document_urls\":true,\"respect_robots_txt\":false},\"mode\":\"document\"}}"))
      # TODO: unsupported assertion `not_error`
      (__result.try(&.results).try(&.size) || 0).should be >=(2)
      __result.results.try(&.[1]).try(&.content).to_s.should contain("Recursive document target")
    end
    it "extract: remote text document URL" do
      __mock_base_input = ENV["MOCK_SERVER_URL_REMOTE_TEXT_DOCUMENT"]? || (ENV["MOCK_SERVER_URL"]? || "") + "/fixtures/url_remote_text_document"
      __result = Xberg.extract(Xberg::ExtractInput.from_json((__mock_input_input = "{\"kind\":\"uri\",\"uri\":\"$mock_url\"}"; __mock_input_input.gsub("$mock_url", __mock_base_input))), Xberg::ExtractionConfig.from_json("{\"url\":{\"mode\":\"document\"}}"))
      # TODO: unsupported assertion `not_error`
      __result.results.try(&.[0]).try(&.content).to_s.should contain("Remote document hello")
      __result.try(&.summary).try(&.remote_urls).should eq(1)
    end
  end
end
