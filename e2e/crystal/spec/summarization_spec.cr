require "./spec_helper"

describe Xberg do
  describe "summarization" do
    it "LLM-driven abstractive summary. Skipped automatically when XBERG_LLM_API_KEY (or OPENAI_API_KEY) is not set." do
      __mock_base_input = ENV["MOCK_SERVER_SUMMARIZATION_ABSTRACTIVE_SMOKE"]? || (ENV["MOCK_SERVER_URL"]? || "") + "/fixtures/summarization_abstractive_smoke"
      __result = Xberg.extract(Xberg::ExtractInput.from_json((__mock_input_input = "{\"kind\":\"uri\",\"uri\":\"$mock_url/text/book_war_and_peace_1p.txt\"}"; __mock_input_input.gsub("$mock_url", __mock_base_input))), Xberg::ExtractionConfig.from_json("{\"summarization\":{\"llm\":{\"max_tokens\":200,\"model\":\"openai/gpt-4o-mini\",\"temperature\":0.0},\"max_tokens\":150,\"strategy\":\"abstractive\"}}"))
      # TODO: unsupported assertion `not_error`
      __result.results[0].try(&.summary).try(&.text).to_s.should_not be_empty
      __result.results[0].try(&.summary).try(&.strategy).to_s.strip.should eq("abstractive")
    end
    it "TextRank extractive summary over a multi-paragraph plain text document. Pure-Rust, deterministic, no external services required." do
      __mock_base_input = ENV["MOCK_SERVER_SUMMARIZATION_EXTRACTIVE_SMOKE"]? || (ENV["MOCK_SERVER_URL"]? || "") + "/fixtures/summarization_extractive_smoke"
      __result = Xberg.extract(Xberg::ExtractInput.from_json((__mock_input_input = "{\"kind\":\"uri\",\"uri\":\"$mock_url/text/book_war_and_peace_1p.txt\"}"; __mock_input_input.gsub("$mock_url", __mock_base_input))), Xberg::ExtractionConfig.from_json("{\"summarization\":{\"max_tokens\":80,\"strategy\":\"extractive\"}}"))
      # TODO: unsupported assertion `not_error`
      __result.results[0].mime_type.to_s.strip.should eq("text/plain")
      __result.results[0].try(&.summary).try(&.text).to_s.should_not be_empty
      __result.results[0].try(&.summary).try(&.strategy).to_s.strip.should eq("extractive")
    end
  end
end
