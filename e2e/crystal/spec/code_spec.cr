require "./spec_helper"

describe Xberg do
  describe "code" do
    it "Test language detection from shebang line via bytes input" do
      __mock_base_input = ENV["MOCK_SERVER_CODE_SHEBANG_DETECTION"]? || (ENV["MOCK_SERVER_URL"]? || "") + "/fixtures/code_shebang_detection"
      __result = Xberg.extract(Xberg::ExtractInput.from_json((__mock_input_input = "{\"kind\":\"uri\",\"mime_type\":\"text/x-source-code\",\"uri\":\"$mock_url/code/script.sh\"}"; __mock_input_input.gsub("$mock_url", __mock_base_input))), Xberg::ExtractionConfig.from_json("{}"))
      __result.results.try(&.[0]).try(&.mime_type).to_s.strip.should eq("text/x-source-code")
      (__result.results.try(&.[0]).try(&.content).try(&.size) || 0).should be >=(10)
      __result.results.try(&.[0]).try(&.content).to_s.should contain("build")
      __result.results.try(&.[0]).try(&.content).to_s.should contain("clean")
    end
  end
end
