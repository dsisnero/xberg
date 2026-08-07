require "./spec_helper"

describe Xberg do
  describe "format_specific" do
    it "Standalone DOCX extraction using extract" do
      __mock_base_input = ENV["MOCK_SERVER_FORMAT_DOCX_STANDALONE"]? || (ENV["MOCK_SERVER_URL"]? || "") + "/fixtures/format_docx_standalone"
      __result = Xberg.extract(Xberg::ExtractInput.from_json((__mock_input_input = "{\"filename\":\"fake.docx\",\"kind\":\"uri\",\"mime_type\":\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"uri\":\"$mock_url/docx/fake.docx\"}"; __mock_input_input.gsub("$mock_url", __mock_base_input))), Xberg::ExtractionConfig.from_json("{}"))
      # TODO: unsupported assertion `not_error`
      __result.results[0].content.size.should be >=(20)
    end
    it "Standalone HWPX extraction using extract" do
      __mock_base_input = ENV["MOCK_SERVER_FORMAT_HWPX_STANDALONE"]? || (ENV["MOCK_SERVER_URL"]? || "") + "/fixtures/format_hwpx_standalone"
      __result = Xberg.extract(Xberg::ExtractInput.from_json((__mock_input_input = "{\"filename\":\"simple.hwpx\",\"kind\":\"uri\",\"mime_type\":\"application/haansofthwpx\",\"uri\":\"$mock_url/hwpx/simple.hwpx\"}"; __mock_input_input.gsub("$mock_url", __mock_base_input))), Xberg::ExtractionConfig.from_json("{}"))
      # TODO: unsupported assertion `not_error`
      __result.results[0].content.size.should be >=(20)
      __result.results[0].content.to_s.should contain("Hello from HWPX")
    end
    it "Standalone PDF text extraction using extract" do
      __mock_base_input = ENV["MOCK_SERVER_FORMAT_PDF_TEXT"]? || (ENV["MOCK_SERVER_URL"]? || "") + "/fixtures/format_pdf_text"
      __result = Xberg.extract(Xberg::ExtractInput.from_json((__mock_input_input = "{\"filename\":\"fake_memo.pdf\",\"kind\":\"uri\",\"mime_type\":\"application/pdf\",\"uri\":\"$mock_url/pdf/fake_memo.pdf\"}"; __mock_input_input.gsub("$mock_url", __mock_base_input))), Xberg::ExtractionConfig.from_json("{}"))
      # TODO: unsupported assertion `not_error`
      __result.results[0].content.size.should be >=(50)
      (__result.results[0].content.includes?("Mallori") || __result.results[0].content.includes?("May")).should be_true
    end
    it "PPTX presentation extraction using extract" do
      __mock_base_input = ENV["MOCK_SERVER_FORMAT_PPTX"]? || (ENV["MOCK_SERVER_URL"]? || "") + "/fixtures/format_pptx"
      __result = Xberg.extract(Xberg::ExtractInput.from_json((__mock_input_input = "{\"kind\":\"uri\",\"mime_type\":\"application/vnd.openxmlformats-officedocument.presentationml.presentation\",\"uri\":\"$mock_url/pptx/simple.pptx\"}"; __mock_input_input.gsub("$mock_url", __mock_base_input))), Xberg::ExtractionConfig.from_json("{}"))
      # TODO: unsupported assertion `not_error`
    end
    it "XLSX spreadsheet extraction using extract" do
      __mock_base_input = ENV["MOCK_SERVER_FORMAT_XLSX"]? || (ENV["MOCK_SERVER_URL"]? || "") + "/fixtures/format_xlsx"
      __result = Xberg.extract(Xberg::ExtractInput.from_json((__mock_input_input = "{\"kind\":\"uri\",\"mime_type\":\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"uri\":\"$mock_url/xlsx/stanley_cups.xlsx\"}"; __mock_input_input.gsub("$mock_url", __mock_base_input))), Xberg::ExtractionConfig.from_json("{}"))
      # TODO: unsupported assertion `not_error`
    end
  end
end
