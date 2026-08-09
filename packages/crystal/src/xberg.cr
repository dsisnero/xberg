require "json"

# Low-level binding to the generated C FFI layer (xberg.h).
#
# Every non-scalar value crosses the C ABI as a NUL-terminated JSON string
# (`LibC::Char*`); scalars pass by value. Strings returned by the library are
# owned by Rust and must be released with `xberg_free_string`.
#
# Link against the FFI shared library. The library must be installed to a
# standard path, or you can pass --link-flags at build time:
#   crystal build ... --link-flags="-L/path/to/lib -Wl,-rpath,/path/to/lib"
@[Link(ldflags: "-lxberg_ffi")]
lib LibXberg
  fun free_string = xberg_free_string(ptr : LibC::Char*) : Void
  fun last_error_code = xberg_last_error_code() : Int32
  fun last_error_context = xberg_last_error_context() : LibC::Char*

  struct ChunkClassificationConfig
    _data : Void*
  end
  struct ChunkingConfig
    _data : Void*
  end
  struct ContentFilterConfig
    _data : Void*
  end
  struct DiffOptions
    _data : Void*
  end
  struct DoctorCheck
    _data : Void*
  end
  struct DoctorReport
    _data : Void*
  end
  struct DocumentStructure
    _data : Void*
  end
  struct EmbeddingConfig
    _data : Void*
  end
  struct ExtractInput
    _data : Void*
  end
  struct ExtractedDocument
    _data : Void*
  end
  struct ExtractionConfig
    _data : Void*
  end
  struct ExtractionResult
    _data : Void*
  end
  struct FootnoteConfig
    _data : Void*
  end
  struct HeuristicsConfig
    _data : Void*
  end
  struct HierarchyConfig
    _data : Void*
  end
  struct HtmlOutputConfig
    _data : Void*
  end
  struct ImageExtractionConfig
    _data : Void*
  end
  struct ImagePreprocessingConfig
    _data : Void*
  end
  struct KeywordConfig
    _data : Void*
  end
  struct LanguageDetectionConfig
    _data : Void*
  end
  struct LateInteractionConfig
    _data : Void*
  end
  struct LateInteractionMatch
    _data : Void*
  end
  struct LayoutDetectionConfig
    _data : Void*
  end
  struct MapResult
    _data : Void*
  end
  struct MultiVectorEmbedding
    _data : Void*
  end
  struct MultidocThresholds
    _data : Void*
  end
  struct OcrBackendType
    _data : Void*
  end
  struct OcrConfig
    _data : Void*
  end
  struct OcrQualityThresholds
    _data : Void*
  end
  struct PaddleOcrConfig
    _data : Void*
  end
  struct PageConfig
    _data : Void*
  end
  struct PageSignals
    _data : Void*
  end
  struct PdfConfig
    _data : Void*
  end
  struct PostProcessorConfig
    _data : Void*
  end
  struct Preset
    _data : Void*
  end
  struct PresetSummary
    _data : Void*
  end
  struct ProcessingStage
    _data : Void*
  end
  struct ProcessingWarning
    _data : Void*
  end
  struct RakeParams
    _data : Void*
  end
  struct RedactionConfig
    _data : Void*
  end
  struct RedactionPattern
    _data : Void*
  end
  struct RedactionTerm
    _data : Void*
  end
  struct RerankerConfig
    _data : Void*
  end
  struct SecurityLimits
    _data : Void*
  end
  struct ServerConfig
    _data : Void*
  end
  struct SparseEmbedding
    _data : Void*
  end
  struct SparseEmbeddingConfig
    _data : Void*
  end
  struct SupportedFormat
    _data : Void*
  end
  struct SvgOptions
    _data : Void*
  end
  struct TesseractConfig
    _data : Void*
  end
  struct TokenReductionConfig
    _data : Void*
  end
  struct TokenReductionOptions
    _data : Void*
  end
  struct TranscriptionConfig
    _data : Void*
  end
  struct TreeSitterConfig
    _data : Void*
  end
  struct TreeSitterProcessConfig
    _data : Void*
  end
  struct UrlExtractionConfig
    _data : Void*
  end
  struct YakeParams
    _data : Void*
  end
  fun chunk_classification_config_from_json = xberg_chunk_classification_config_from_json(json : LibC::Char*) : ChunkClassificationConfig*
  fun chunk_classification_config_to_json = xberg_chunk_classification_config_to_json(ptr : ChunkClassificationConfig*) : LibC::Char*
  fun chunk_classification_config_free = xberg_chunk_classification_config_free(ptr : ChunkClassificationConfig*)
  fun chunking_config_from_json = xberg_chunking_config_from_json(json : LibC::Char*) : ChunkingConfig*
  fun chunking_config_to_json = xberg_chunking_config_to_json(ptr : ChunkingConfig*) : LibC::Char*
  fun chunking_config_free = xberg_chunking_config_free(ptr : ChunkingConfig*)
  fun content_filter_config_from_json = xberg_content_filter_config_from_json(json : LibC::Char*) : ContentFilterConfig*
  fun content_filter_config_to_json = xberg_content_filter_config_to_json(ptr : ContentFilterConfig*) : LibC::Char*
  fun content_filter_config_free = xberg_content_filter_config_free(ptr : ContentFilterConfig*)
  fun diff_options_from_json = xberg_diff_options_from_json(json : LibC::Char*) : DiffOptions*
  fun diff_options_to_json = xberg_diff_options_to_json(ptr : DiffOptions*) : LibC::Char*
  fun diff_options_free = xberg_diff_options_free(ptr : DiffOptions*)
  fun doctor_check_from_json = xberg_doctor_check_from_json(json : LibC::Char*) : DoctorCheck*
  fun doctor_check_to_json = xberg_doctor_check_to_json(ptr : DoctorCheck*) : LibC::Char*
  fun doctor_check_free = xberg_doctor_check_free(ptr : DoctorCheck*)
  fun doctor_report_from_json = xberg_doctor_report_from_json(json : LibC::Char*) : DoctorReport*
  fun doctor_report_to_json = xberg_doctor_report_to_json(ptr : DoctorReport*) : LibC::Char*
  fun doctor_report_free = xberg_doctor_report_free(ptr : DoctorReport*)
  fun document_structure_from_json = xberg_document_structure_from_json(json : LibC::Char*) : DocumentStructure*
  fun document_structure_to_json = xberg_document_structure_to_json(ptr : DocumentStructure*) : LibC::Char*
  fun document_structure_free = xberg_document_structure_free(ptr : DocumentStructure*)
  fun embedding_config_from_json = xberg_embedding_config_from_json(json : LibC::Char*) : EmbeddingConfig*
  fun embedding_config_to_json = xberg_embedding_config_to_json(ptr : EmbeddingConfig*) : LibC::Char*
  fun embedding_config_free = xberg_embedding_config_free(ptr : EmbeddingConfig*)
  fun extract_input_from_json = xberg_extract_input_from_json(json : LibC::Char*) : ExtractInput*
  fun extract_input_to_json = xberg_extract_input_to_json(ptr : ExtractInput*) : LibC::Char*
  fun extract_input_free = xberg_extract_input_free(ptr : ExtractInput*)
  fun extracted_document_from_json = xberg_extracted_document_from_json(json : LibC::Char*) : ExtractedDocument*
  fun extracted_document_to_json = xberg_extracted_document_to_json(ptr : ExtractedDocument*) : LibC::Char*
  fun extracted_document_free = xberg_extracted_document_free(ptr : ExtractedDocument*)
  fun extraction_config_from_json = xberg_extraction_config_from_json(json : LibC::Char*) : ExtractionConfig*
  fun extraction_config_to_json = xberg_extraction_config_to_json(ptr : ExtractionConfig*) : LibC::Char*
  fun extraction_config_free = xberg_extraction_config_free(ptr : ExtractionConfig*)
  fun extraction_result_from_json = xberg_extraction_result_from_json(json : LibC::Char*) : ExtractionResult*
  fun extraction_result_to_json = xberg_extraction_result_to_json(ptr : ExtractionResult*) : LibC::Char*
  fun extraction_result_free = xberg_extraction_result_free(ptr : ExtractionResult*)
  fun footnote_config_from_json = xberg_footnote_config_from_json(json : LibC::Char*) : FootnoteConfig*
  fun footnote_config_to_json = xberg_footnote_config_to_json(ptr : FootnoteConfig*) : LibC::Char*
  fun footnote_config_free = xberg_footnote_config_free(ptr : FootnoteConfig*)
  fun heuristics_config_from_json = xberg_heuristics_config_from_json(json : LibC::Char*) : HeuristicsConfig*
  fun heuristics_config_to_json = xberg_heuristics_config_to_json(ptr : HeuristicsConfig*) : LibC::Char*
  fun heuristics_config_free = xberg_heuristics_config_free(ptr : HeuristicsConfig*)
  fun hierarchy_config_from_json = xberg_hierarchy_config_from_json(json : LibC::Char*) : HierarchyConfig*
  fun hierarchy_config_to_json = xberg_hierarchy_config_to_json(ptr : HierarchyConfig*) : LibC::Char*
  fun hierarchy_config_free = xberg_hierarchy_config_free(ptr : HierarchyConfig*)
  fun html_output_config_from_json = xberg_html_output_config_from_json(json : LibC::Char*) : HtmlOutputConfig*
  fun html_output_config_to_json = xberg_html_output_config_to_json(ptr : HtmlOutputConfig*) : LibC::Char*
  fun html_output_config_free = xberg_html_output_config_free(ptr : HtmlOutputConfig*)
  fun image_extraction_config_from_json = xberg_image_extraction_config_from_json(json : LibC::Char*) : ImageExtractionConfig*
  fun image_extraction_config_to_json = xberg_image_extraction_config_to_json(ptr : ImageExtractionConfig*) : LibC::Char*
  fun image_extraction_config_free = xberg_image_extraction_config_free(ptr : ImageExtractionConfig*)
  fun image_preprocessing_config_from_json = xberg_image_preprocessing_config_from_json(json : LibC::Char*) : ImagePreprocessingConfig*
  fun image_preprocessing_config_to_json = xberg_image_preprocessing_config_to_json(ptr : ImagePreprocessingConfig*) : LibC::Char*
  fun image_preprocessing_config_free = xberg_image_preprocessing_config_free(ptr : ImagePreprocessingConfig*)
  fun keyword_config_from_json = xberg_keyword_config_from_json(json : LibC::Char*) : KeywordConfig*
  fun keyword_config_to_json = xberg_keyword_config_to_json(ptr : KeywordConfig*) : LibC::Char*
  fun keyword_config_free = xberg_keyword_config_free(ptr : KeywordConfig*)
  fun language_detection_config_from_json = xberg_language_detection_config_from_json(json : LibC::Char*) : LanguageDetectionConfig*
  fun language_detection_config_to_json = xberg_language_detection_config_to_json(ptr : LanguageDetectionConfig*) : LibC::Char*
  fun language_detection_config_free = xberg_language_detection_config_free(ptr : LanguageDetectionConfig*)
  fun late_interaction_config_from_json = xberg_late_interaction_config_from_json(json : LibC::Char*) : LateInteractionConfig*
  fun late_interaction_config_to_json = xberg_late_interaction_config_to_json(ptr : LateInteractionConfig*) : LibC::Char*
  fun late_interaction_config_free = xberg_late_interaction_config_free(ptr : LateInteractionConfig*)
  fun late_interaction_match_from_json = xberg_late_interaction_match_from_json(json : LibC::Char*) : LateInteractionMatch*
  fun late_interaction_match_to_json = xberg_late_interaction_match_to_json(ptr : LateInteractionMatch*) : LibC::Char*
  fun late_interaction_match_free = xberg_late_interaction_match_free(ptr : LateInteractionMatch*)
  fun layout_detection_config_from_json = xberg_layout_detection_config_from_json(json : LibC::Char*) : LayoutDetectionConfig*
  fun layout_detection_config_to_json = xberg_layout_detection_config_to_json(ptr : LayoutDetectionConfig*) : LibC::Char*
  fun layout_detection_config_free = xberg_layout_detection_config_free(ptr : LayoutDetectionConfig*)
  fun map_result_from_json = xberg_map_result_from_json(json : LibC::Char*) : MapResult*
  fun map_result_to_json = xberg_map_result_to_json(ptr : MapResult*) : LibC::Char*
  fun map_result_free = xberg_map_result_free(ptr : MapResult*)
  fun multi_vector_embedding_from_json = xberg_multi_vector_embedding_from_json(json : LibC::Char*) : MultiVectorEmbedding*
  fun multi_vector_embedding_to_json = xberg_multi_vector_embedding_to_json(ptr : MultiVectorEmbedding*) : LibC::Char*
  fun multi_vector_embedding_free = xberg_multi_vector_embedding_free(ptr : MultiVectorEmbedding*)
  fun multidoc_thresholds_from_json = xberg_multidoc_thresholds_from_json(json : LibC::Char*) : MultidocThresholds*
  fun multidoc_thresholds_to_json = xberg_multidoc_thresholds_to_json(ptr : MultidocThresholds*) : LibC::Char*
  fun multidoc_thresholds_free = xberg_multidoc_thresholds_free(ptr : MultidocThresholds*)
  fun ocr_backend_type_from_json = xberg_ocr_backend_type_from_json(json : LibC::Char*) : OcrBackendType*
  fun ocr_backend_type_to_json = xberg_ocr_backend_type_to_json(ptr : OcrBackendType*) : LibC::Char*
  fun ocr_backend_type_free = xberg_ocr_backend_type_free(ptr : OcrBackendType*)
  fun ocr_config_from_json = xberg_ocr_config_from_json(json : LibC::Char*) : OcrConfig*
  fun ocr_config_to_json = xberg_ocr_config_to_json(ptr : OcrConfig*) : LibC::Char*
  fun ocr_config_free = xberg_ocr_config_free(ptr : OcrConfig*)
  fun ocr_quality_thresholds_from_json = xberg_ocr_quality_thresholds_from_json(json : LibC::Char*) : OcrQualityThresholds*
  fun ocr_quality_thresholds_to_json = xberg_ocr_quality_thresholds_to_json(ptr : OcrQualityThresholds*) : LibC::Char*
  fun ocr_quality_thresholds_free = xberg_ocr_quality_thresholds_free(ptr : OcrQualityThresholds*)
  fun paddle_ocr_config_from_json = xberg_paddle_ocr_config_from_json(json : LibC::Char*) : PaddleOcrConfig*
  fun paddle_ocr_config_to_json = xberg_paddle_ocr_config_to_json(ptr : PaddleOcrConfig*) : LibC::Char*
  fun paddle_ocr_config_free = xberg_paddle_ocr_config_free(ptr : PaddleOcrConfig*)
  fun page_config_from_json = xberg_page_config_from_json(json : LibC::Char*) : PageConfig*
  fun page_config_to_json = xberg_page_config_to_json(ptr : PageConfig*) : LibC::Char*
  fun page_config_free = xberg_page_config_free(ptr : PageConfig*)
  fun page_signals_from_json = xberg_page_signals_from_json(json : LibC::Char*) : PageSignals*
  fun page_signals_to_json = xberg_page_signals_to_json(ptr : PageSignals*) : LibC::Char*
  fun page_signals_free = xberg_page_signals_free(ptr : PageSignals*)
  fun pdf_config_from_json = xberg_pdf_config_from_json(json : LibC::Char*) : PdfConfig*
  fun pdf_config_to_json = xberg_pdf_config_to_json(ptr : PdfConfig*) : LibC::Char*
  fun pdf_config_free = xberg_pdf_config_free(ptr : PdfConfig*)
  fun post_processor_config_from_json = xberg_post_processor_config_from_json(json : LibC::Char*) : PostProcessorConfig*
  fun post_processor_config_to_json = xberg_post_processor_config_to_json(ptr : PostProcessorConfig*) : LibC::Char*
  fun post_processor_config_free = xberg_post_processor_config_free(ptr : PostProcessorConfig*)
  fun preset_from_json = xberg_preset_from_json(json : LibC::Char*) : Preset*
  fun preset_to_json = xberg_preset_to_json(ptr : Preset*) : LibC::Char*
  fun preset_free = xberg_preset_free(ptr : Preset*)
  fun preset_summary_from_json = xberg_preset_summary_from_json(json : LibC::Char*) : PresetSummary*
  fun preset_summary_to_json = xberg_preset_summary_to_json(ptr : PresetSummary*) : LibC::Char*
  fun preset_summary_free = xberg_preset_summary_free(ptr : PresetSummary*)
  fun processing_stage_from_json = xberg_processing_stage_from_json(json : LibC::Char*) : ProcessingStage*
  fun processing_stage_to_json = xberg_processing_stage_to_json(ptr : ProcessingStage*) : LibC::Char*
  fun processing_stage_free = xberg_processing_stage_free(ptr : ProcessingStage*)
  fun processing_warning_from_json = xberg_processing_warning_from_json(json : LibC::Char*) : ProcessingWarning*
  fun processing_warning_to_json = xberg_processing_warning_to_json(ptr : ProcessingWarning*) : LibC::Char*
  fun processing_warning_free = xberg_processing_warning_free(ptr : ProcessingWarning*)
  fun rake_params_from_json = xberg_rake_params_from_json(json : LibC::Char*) : RakeParams*
  fun rake_params_to_json = xberg_rake_params_to_json(ptr : RakeParams*) : LibC::Char*
  fun rake_params_free = xberg_rake_params_free(ptr : RakeParams*)
  fun redaction_config_from_json = xberg_redaction_config_from_json(json : LibC::Char*) : RedactionConfig*
  fun redaction_config_to_json = xberg_redaction_config_to_json(ptr : RedactionConfig*) : LibC::Char*
  fun redaction_config_free = xberg_redaction_config_free(ptr : RedactionConfig*)
  fun redaction_pattern_from_json = xberg_redaction_pattern_from_json(json : LibC::Char*) : RedactionPattern*
  fun redaction_pattern_to_json = xberg_redaction_pattern_to_json(ptr : RedactionPattern*) : LibC::Char*
  fun redaction_pattern_free = xberg_redaction_pattern_free(ptr : RedactionPattern*)
  fun redaction_term_from_json = xberg_redaction_term_from_json(json : LibC::Char*) : RedactionTerm*
  fun redaction_term_to_json = xberg_redaction_term_to_json(ptr : RedactionTerm*) : LibC::Char*
  fun redaction_term_free = xberg_redaction_term_free(ptr : RedactionTerm*)
  fun reranker_config_from_json = xberg_reranker_config_from_json(json : LibC::Char*) : RerankerConfig*
  fun reranker_config_to_json = xberg_reranker_config_to_json(ptr : RerankerConfig*) : LibC::Char*
  fun reranker_config_free = xberg_reranker_config_free(ptr : RerankerConfig*)
  fun security_limits_from_json = xberg_security_limits_from_json(json : LibC::Char*) : SecurityLimits*
  fun security_limits_to_json = xberg_security_limits_to_json(ptr : SecurityLimits*) : LibC::Char*
  fun security_limits_free = xberg_security_limits_free(ptr : SecurityLimits*)
  fun server_config_from_json = xberg_server_config_from_json(json : LibC::Char*) : ServerConfig*
  fun server_config_to_json = xberg_server_config_to_json(ptr : ServerConfig*) : LibC::Char*
  fun server_config_free = xberg_server_config_free(ptr : ServerConfig*)
  fun sparse_embedding_from_json = xberg_sparse_embedding_from_json(json : LibC::Char*) : SparseEmbedding*
  fun sparse_embedding_to_json = xberg_sparse_embedding_to_json(ptr : SparseEmbedding*) : LibC::Char*
  fun sparse_embedding_free = xberg_sparse_embedding_free(ptr : SparseEmbedding*)
  fun sparse_embedding_config_from_json = xberg_sparse_embedding_config_from_json(json : LibC::Char*) : SparseEmbeddingConfig*
  fun sparse_embedding_config_to_json = xberg_sparse_embedding_config_to_json(ptr : SparseEmbeddingConfig*) : LibC::Char*
  fun sparse_embedding_config_free = xberg_sparse_embedding_config_free(ptr : SparseEmbeddingConfig*)
  fun supported_format_from_json = xberg_supported_format_from_json(json : LibC::Char*) : SupportedFormat*
  fun supported_format_to_json = xberg_supported_format_to_json(ptr : SupportedFormat*) : LibC::Char*
  fun supported_format_free = xberg_supported_format_free(ptr : SupportedFormat*)
  fun svg_options_from_json = xberg_svg_options_from_json(json : LibC::Char*) : SvgOptions*
  fun svg_options_to_json = xberg_svg_options_to_json(ptr : SvgOptions*) : LibC::Char*
  fun svg_options_free = xberg_svg_options_free(ptr : SvgOptions*)
  fun tesseract_config_from_json = xberg_tesseract_config_from_json(json : LibC::Char*) : TesseractConfig*
  fun tesseract_config_to_json = xberg_tesseract_config_to_json(ptr : TesseractConfig*) : LibC::Char*
  fun tesseract_config_free = xberg_tesseract_config_free(ptr : TesseractConfig*)
  fun token_reduction_config_from_json = xberg_token_reduction_config_from_json(json : LibC::Char*) : TokenReductionConfig*
  fun token_reduction_config_to_json = xberg_token_reduction_config_to_json(ptr : TokenReductionConfig*) : LibC::Char*
  fun token_reduction_config_free = xberg_token_reduction_config_free(ptr : TokenReductionConfig*)
  fun token_reduction_options_from_json = xberg_token_reduction_options_from_json(json : LibC::Char*) : TokenReductionOptions*
  fun token_reduction_options_to_json = xberg_token_reduction_options_to_json(ptr : TokenReductionOptions*) : LibC::Char*
  fun token_reduction_options_free = xberg_token_reduction_options_free(ptr : TokenReductionOptions*)
  fun transcription_config_from_json = xberg_transcription_config_from_json(json : LibC::Char*) : TranscriptionConfig*
  fun transcription_config_to_json = xberg_transcription_config_to_json(ptr : TranscriptionConfig*) : LibC::Char*
  fun transcription_config_free = xberg_transcription_config_free(ptr : TranscriptionConfig*)
  fun tree_sitter_config_from_json = xberg_tree_sitter_config_from_json(json : LibC::Char*) : TreeSitterConfig*
  fun tree_sitter_config_to_json = xberg_tree_sitter_config_to_json(ptr : TreeSitterConfig*) : LibC::Char*
  fun tree_sitter_config_free = xberg_tree_sitter_config_free(ptr : TreeSitterConfig*)
  fun tree_sitter_process_config_from_json = xberg_tree_sitter_process_config_from_json(json : LibC::Char*) : TreeSitterProcessConfig*
  fun tree_sitter_process_config_to_json = xberg_tree_sitter_process_config_to_json(ptr : TreeSitterProcessConfig*) : LibC::Char*
  fun tree_sitter_process_config_free = xberg_tree_sitter_process_config_free(ptr : TreeSitterProcessConfig*)
  fun url_extraction_config_from_json = xberg_url_extraction_config_from_json(json : LibC::Char*) : UrlExtractionConfig*
  fun url_extraction_config_to_json = xberg_url_extraction_config_to_json(ptr : UrlExtractionConfig*) : LibC::Char*
  fun url_extraction_config_free = xberg_url_extraction_config_free(ptr : UrlExtractionConfig*)
  fun yake_params_from_json = xberg_yake_params_from_json(json : LibC::Char*) : YakeParams*
  fun yake_params_to_json = xberg_yake_params_to_json(ptr : YakeParams*) : LibC::Char*
  fun yake_params_free = xberg_yake_params_free(ptr : YakeParams*)

  # Extract content from a single bytes or URI input.
  fun extract = xberg_extract(input : ExtractInput*, config : ExtractionConfig*) : ExtractionResult*
  # Extract content from multiple bytes or URI inputs.
  fun extract_batch = xberg_extract_batch(inputs : LibC::Char*, config : ExtractionConfig*) : ExtractionResult*
  # Discover all pages and sitemaps reachable from `uri` without extracting document content.
  fun map_url = xberg_map_url(uri : LibC::Char*, config : UrlExtractionConfig*) : MapResult*
  # List all supported document formats.
  fun list_supported_formats = xberg_list_supported_formats() : LibC::Char*
  # Ensure built-in extractors are registered.
  fun ensure_initialized = xberg_ensure_initialized() : Void
  # Clear all embedding backends from the global registry.
  fun clear_embedding_backends = xberg_clear_embedding_backends() : Void
  # List the names of all registered embedding backends.
  fun list_embedding_backends = xberg_list_embedding_backends() : LibC::Char*
  # List names of all registered document extractors.
  fun list_document_extractors = xberg_list_document_extractors() : LibC::Char*
  # Clear all document extractors from the global registry.
  fun clear_document_extractors = xberg_clear_document_extractors() : Void
  # List all registered OCR backends.
  fun list_ocr_backends = xberg_list_ocr_backends() : LibC::Char*
  # Clear all OCR backends from the global registry.
  fun clear_ocr_backends = xberg_clear_ocr_backends() : Void
  # List all registered post-processor names.
  fun list_post_processors = xberg_list_post_processors() : LibC::Char*
  # Remove all registered post-processors.
  fun clear_post_processors = xberg_clear_post_processors() : Void
  # List names of all registered renderers.
  fun list_renderers = xberg_list_renderers() : LibC::Char*
  # Clear all renderers from the global registry.
  fun clear_renderers = xberg_clear_renderers() : Void
  # Clear all reranker backends from the global registry.
  fun clear_reranker_backends = xberg_clear_reranker_backends() : Void
  # List the names of all registered reranker backends.
  fun list_reranker_backends = xberg_list_reranker_backends() : LibC::Char*
  # Clear all tokenizer backends from the global registry.
  fun clear_tokenizer_backends = xberg_clear_tokenizer_backends() : Void
  # List the names of all registered tokenizer backends.
  fun list_tokenizer_backends = xberg_list_tokenizer_backends() : LibC::Char*
  # List names of all registered validators.
  fun list_validators = xberg_list_validators() : LibC::Char*
  # Remove all registered validators.
  fun clear_validators = xberg_clear_validators() : Void
  # Run chunk classification against an extraction result.
  fun classify_chunks = xberg_classify_chunks(result : ExtractedDocument*, config : ChunkClassificationConfig*) : Void
  # Find unmarked claims in markdown text.
  fun find_unmarked_claims = xberg_find_unmarked_claims(markdown : LibC::Char*) : LibC::Char*
  # Verify that an excerpt appears verbatim in source text.
  fun verify_excerpt = xberg_verify_excerpt(excerpt : LibC::Char*, source_text : LibC::Char*) : Bool
  # Async wrapper over [`embed_sparse`]: runs the blocking ONNX inference on a
  fun embed_sparse_async = xberg_embed_sparse_async(texts : LibC::Char*, config : SparseEmbeddingConfig*) : LibC::Char*
  # Score a query against a document using ColBERT's MaxSim operator: for each
  fun max_sim_score = xberg_max_sim_score(query : MultiVectorEmbedding*, doc : MultiVectorEmbedding*) : Float64
  # Rank a set of documents against a query by MaxSim score, descending.
  fun max_sim_rank = xberg_max_sim_rank(query : MultiVectorEmbedding*, docs : LibC::Char*) : LibC::Char*
  # Async wrapper over [`embed_multi_vector`]: runs the blocking ONNX inference
  fun embed_multi_vector_async = xberg_embed_multi_vector_async(texts : LibC::Char*, config : LateInteractionConfig*, is_query : Bool) : LibC::Char*
  # Probe the backends and settings in `config` and report what will actually
  fun doctor = xberg_doctor(config : ExtractionConfig*) : DoctorReport*
  # Install [`PdfOxideWarningCapture`] as the process-wide `log` backend,
  fun install_pdf_render_diagnostics = xberg_install_pdf_render_diagnostics() : Bool
  # Drain the glyph-drop [`ProcessingWarning`]s accumulated on this thread by
  fun take_pdf_oxide_render_warnings = xberg_take_pdf_oxide_render_warnings() : LibC::Char*
  # Build the four (or three) token Whisper decoder prompt.
  fun build_decoder_prompt_tokens = xberg_build_decoder_prompt_tokens(start_of_transcript : UInt32, lang_id : UInt32, transcribe : UInt32, no_timestamps : UInt32, timestamps : Bool) : LibC::Char*
  # Convert a raw Whisper timestamp token ID to a millisecond offset from the
  fun timestamp_token_to_ms = xberg_timestamp_token_to_ms(token_id : UInt32, timestamp_begin_id : UInt32) : UInt32
  fun document_extractor_extract = xberg_document_extractor_extract(handle : Void*, input : ExtractInput*, config : ExtractionConfig*) : ExtractedDocument*
  fun document_extractor_supported_mime_types = xberg_document_extractor_supported_mime_types(handle : Void*) : LibC::Char*
  fun document_extractor_priority = xberg_document_extractor_priority(handle : Void*) : Int32
  fun document_extractor_can_handle = xberg_document_extractor_can_handle(handle : Void*, path : LibC::Char*, mime_type : LibC::Char*) : Bool
  fun document_extractor_free = xberg_document_extractor_free(handle : Void*) : Void
  fun embedding_backend_dimensions = xberg_embedding_backend_dimensions(handle : Void*) : LibC::SizeT
  fun embedding_backend_embed = xberg_embedding_backend_embed(handle : Void*, texts : LibC::Char*) : LibC::Char*
  fun embedding_backend_free = xberg_embedding_backend_free(handle : Void*) : Void
  fun meta_schema_compile = xberg_meta_schema_compile(meta_schema_json : LibC::Char*) : Void*
  fun meta_schema_parse_preset = xberg_meta_schema_parse_preset(handle : Void*, path : LibC::Char*, raw : LibC::Char*) : Preset*
  fun meta_schema_free = xberg_meta_schema_free(handle : Void*) : Void
  fun ocr_backend_process_image = xberg_ocr_backend_process_image(handle : Void*, image_bytes : LibC::Char*, config : OcrConfig*) : ExtractedDocument*
  fun ocr_backend_process_image_file = xberg_ocr_backend_process_image_file(handle : Void*, path : LibC::Char*, config : OcrConfig*) : ExtractedDocument*
  fun ocr_backend_supports_language = xberg_ocr_backend_supports_language(handle : Void*, lang : LibC::Char*) : Bool
  fun ocr_backend_backend_type = xberg_ocr_backend_backend_type(handle : Void*) : OcrBackendType*
  fun ocr_backend_supported_languages = xberg_ocr_backend_supported_languages(handle : Void*) : LibC::Char*
  fun ocr_backend_supports_table_detection = xberg_ocr_backend_supports_table_detection(handle : Void*) : Bool
  fun ocr_backend_supports_document_processing = xberg_ocr_backend_supports_document_processing(handle : Void*) : Bool
  fun ocr_backend_emits_structured_markdown = xberg_ocr_backend_emits_structured_markdown(handle : Void*) : Bool
  fun ocr_backend_process_document = xberg_ocr_backend_process_document(handle : Void*, path : LibC::Char*, config : OcrConfig*) : ExtractedDocument*
  fun ocr_backend_free = xberg_ocr_backend_free(handle : Void*) : Void
  fun plugin_name = xberg_plugin_name(handle : Void*) : LibC::Char*
  fun plugin_version = xberg_plugin_version(handle : Void*) : LibC::Char*
  fun plugin_initialize = xberg_plugin_initialize(handle : Void*) : Void
  fun plugin_shutdown = xberg_plugin_shutdown(handle : Void*) : Void
  fun plugin_description = xberg_plugin_description(handle : Void*) : LibC::Char*
  fun plugin_author = xberg_plugin_author(handle : Void*) : LibC::Char*
  fun plugin_free = xberg_plugin_free(handle : Void*) : Void
  fun post_processor_process = xberg_post_processor_process(handle : Void*, result : ExtractedDocument*, config : ExtractionConfig*) : Void
  fun post_processor_processing_stage = xberg_post_processor_processing_stage(handle : Void*) : ProcessingStage*
  fun post_processor_should_process = xberg_post_processor_should_process(handle : Void*, result : ExtractedDocument*, config : ExtractionConfig*) : Bool
  fun post_processor_estimated_duration_ms = xberg_post_processor_estimated_duration_ms(handle : Void*, result : ExtractedDocument*) : UInt64
  fun post_processor_priority = xberg_post_processor_priority(handle : Void*) : Int32
  fun post_processor_free = xberg_post_processor_free(handle : Void*) : Void
  fun registry_load_embedded = xberg_registry_load_embedded() : Void*
  fun registry_global = xberg_registry_global() : Void*
  fun registry_get = xberg_registry_get(handle : Void*, id : LibC::Char*) : Preset*
  fun registry_summaries = xberg_registry_summaries(handle : Void*) : LibC::Char*
  fun registry_len = xberg_registry_len(handle : Void*) : LibC::SizeT
  fun registry_is_empty = xberg_registry_is_empty(handle : Void*) : Bool
  fun registry_sample_bytes = xberg_registry_sample_bytes(handle : Void*, preset_id : LibC::Char*, name : LibC::Char*) : LibC::Char*
  fun registry_extend_from_dir = xberg_registry_extend_from_dir(handle : Void*, dir : LibC::Char*) : LibC::SizeT
  fun registry_free = xberg_registry_free(handle : Void*) : Void
  fun renderer_render_result = xberg_renderer_render_result(handle : Void*, result : ExtractedDocument*) : LibC::Char*
  fun renderer_free = xberg_renderer_free(handle : Void*) : Void
  fun reranker_backend_rerank = xberg_reranker_backend_rerank(handle : Void*, query : LibC::Char*, documents : LibC::Char*) : LibC::Char*
  fun reranker_backend_free = xberg_reranker_backend_free(handle : Void*) : Void
  fun token_counter_new = xberg_token_counter_new() : Void*
  fun token_counter_free = xberg_token_counter_free(handle : Void*) : Void
  fun tokenizer_backend_count_tokens = xberg_tokenizer_backend_count_tokens(handle : Void*, text : LibC::Char*) : LibC::SizeT
  fun tokenizer_backend_free = xberg_tokenizer_backend_free(handle : Void*) : Void
  fun validator_validate = xberg_validator_validate(handle : Void*, result : ExtractedDocument*, config : ExtractionConfig*) : Void
  fun validator_should_validate = xberg_validator_should_validate(handle : Void*, result : ExtractedDocument*, config : ExtractionConfig*) : Bool
  fun validator_priority = xberg_validator_priority(handle : Void*) : Int32
  fun validator_free = xberg_validator_free(handle : Void*) : Void
end

# xberg — Crystal bindings generated by alef.
#
# Ruby-style API over the Rust core: snake_case methods, PascalCase types,
# Rust-like generic containers (`Array(T)`, `Hash(K, V)`), and fiber/`Channel`
# based concurrency for async and streaming methods.
module Xberg
  VERSION = "1.1.0"

  # ONNX Runtime execution provider type.
  #
  # Determines which hardware backend is used for model inference.
  # `Auto` (default) selects the best available provider per platform.
  enum ExecutionProviderType
    Auto
    Cpu
    CoreMl
    Cuda
    TensorRt
  end

  # Target format for re-encoding extracted images.
  #
  # Controls whether and how extracted images are normalised to a uniform
  # container format before being returned in `ExtractedDocument.images`.
  # The default (`Native`) preserves the format produced by each extractor
  # without any additional encode pass.
  #
  # Callers that need uniform output — e.g. cloud pipelines that always store
  # WebP thumbnails — set this once on `ImageExtractionConfig.output_format`
  # rather than re-encoding downstream.
  #
  # # Serde shape
  #
  # Uses a tagged enum: `{"type": "native"}`, `{"type": "png"}`,
  # `{"type": "jpeg", "quality": 90}`, etc.
  abstract class ImageOutputFormat
    include JSON::Serializable
    use_json_discriminator "type", {"native" => ImageOutputFormat::Native, "png" => ImageOutputFormat::Png, "jpeg" => ImageOutputFormat::Jpeg, "webp" => ImageOutputFormat::Webp, "heif" => ImageOutputFormat::Heif, "svg" => ImageOutputFormat::Svg}
  end

  class ImageOutputFormat::Native < ImageOutputFormat
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "native"
  end

  class ImageOutputFormat::Png < ImageOutputFormat
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "png"
  end

  class ImageOutputFormat::Jpeg < ImageOutputFormat
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "jpeg"
    getter quality : UInt8 = 0
  end

  class ImageOutputFormat::Webp < ImageOutputFormat
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "webp"
    getter quality : UInt8 = 0
  end

  class ImageOutputFormat::Heif < ImageOutputFormat
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "heif"
    getter quality : UInt8 = 0
  end

  class ImageOutputFormat::Svg < ImageOutputFormat
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "svg"
  end

  # Source kind for [`ExtractInput`].
  enum ExtractInputKind
    Bytes
    Uri
  end

  # URL extraction mode.
  enum UrlExtractionMode
    Auto
    Document
    Crawl
  end

  # Where the heading-path breadcrumb is written when
  # [`ChunkingConfig::prepend_heading_context`](super::super::processing::ChunkingConfig::prepend_heading_context)
  # is enabled for a `Markdown`-chunked document.
  #
  # Prepending the breadcrumb into a chunk's `content` (the default, `Content`) helps
  # dense/embedding retrieval: each chunk becomes a self-contained passage that carries
  # its own structural context. It actively harms lexical retrieval (BM25/TF-IDF),
  # though — every chunk under the same section repeats the same heading tokens, so a
  # heading word's document frequency approaches the number of chunks in that section
  # and its IDF collapses toward zero, drowning out real match signal.
  #
  # `Metadata` keeps `content` free of the breadcrumb and relies solely on
  # [`ChunkMetadata::heading_path`](crate::types::ChunkMetadata::heading_path) (already
  # populated for every chunk under a heading by
  # [`chunk_for_rag`](crate::chunking::chunk_for_rag)), which downstream lexical/hybrid
  # pipelines can use to exclude or down-weight heading tokens directly — instead of the
  # fragile pattern of string-stripping a breadcrumb prefix back out of `content`.
  #
  # There is deliberately no `Both` variant. `heading_path` is populated for every
  # chunk under a heading regardless of this setting, so "both" is precisely what
  # `Content` already does — a third variant would be a synonym, and one that every
  # binding in 15 languages would have to carry and every caller would have to guess
  # the meaning of.
  enum BreadcrumbTarget
    Content
    Metadata
  end

  # Output format for extraction results.
  #
  # Controls the format of the `content` field in `ExtractedDocument`.
  # When set to `Markdown`, `Djot`, or `Html`, the output uses that format.
  # `Plain` returns the raw extracted text.
  # `Structured` returns JSON with full OCR element data including bounding
  # boxes and confidence scores.
  abstract class OutputFormat
    def self.new(pull : ::JSON::PullParser) : OutputFormat
      case pull.kind
      when .string?
        __tag = pull.read_string
        case __tag
        when "plain" then return OutputFormat::Plain.new
        when "markdown" then return OutputFormat::Markdown.new
        when "djot" then return OutputFormat::Djot.new
        when "html" then return OutputFormat::Html.new
        when "json" then return OutputFormat::Json.new
        when "structured" then return OutputFormat::Structured.new
        else raise ::JSON::ParseException.new("unknown OutputFormat variant: #{__tag}", *pull.location)
        end
      when .begin_object?
        __result : OutputFormat? = nil
        pull.read_object do |__key|
          case __key
          when "custom" then __result = OutputFormat::Custom.new(pull)
          else pull.skip
          end
        end
        return __result || raise ::JSON::ParseException.new("empty OutputFormat object", *pull.location)
      else
        raise ::JSON::ParseException.new("invalid OutputFormat JSON", *pull.location)
      end
    end

    def self.from_json(string : String) : OutputFormat
      new(::JSON::PullParser.new(string))
    end

    abstract def to_json(json : ::JSON::Builder)
  end

  class OutputFormat::Plain < OutputFormat
    def to_json(json : ::JSON::Builder)
      json.string("plain")
    end
  end

  class OutputFormat::Markdown < OutputFormat
    def to_json(json : ::JSON::Builder)
      json.string("markdown")
    end
  end

  class OutputFormat::Djot < OutputFormat
    def to_json(json : ::JSON::Builder)
      json.string("djot")
    end
  end

  class OutputFormat::Html < OutputFormat
    def to_json(json : ::JSON::Builder)
      json.string("html")
    end
  end

  class OutputFormat::Json < OutputFormat
    def to_json(json : ::JSON::Builder)
      json.string("json")
    end
  end

  class OutputFormat::Structured < OutputFormat
    def to_json(json : ::JSON::Builder)
      json.string("structured")
    end
  end

  class OutputFormat::Custom < OutputFormat
    getter value : String
    def initialize(@value : String)
    end
    def self.new(pull : ::JSON::PullParser) : OutputFormat::Custom
      __v = String.new(pull)
      new(__v)
    end
    def to_json(json : ::JSON::Builder)
      json.object do
        json.field("custom") do
          @value.to_json(json)
        end
      end
    end
  end

  # Controls how Jupyter notebook code cells are rendered during extraction.
  #
  # A code cell carries both its **source** and any **outputs** that were saved in
  # the notebook. Callers ingesting notebooks for AI agents want different slices of
  # this depending on the task. Xberg never executes cells — `Outputs` and `Both`
  # only surface outputs already stored in the `.ipynb`.
  #
  # This toggle governs a code cell's **source body** and its **saved outputs**.
  # Markdown (prose) cells and structural markers (kernel language, cell id, tags,
  # execution count) are unaffected — prose always renders and markers orient the
  # reader regardless of mode.
  enum JupyterCellRendering
    Source
    Outputs
    Both
  end

  # Built-in HTML theme selection.
  enum HtmlTheme
    Default
    GitHub
    Dark
    Light
    Unstyled
  end

  # Late-interaction model types supported by Xberg.
  #
  # Since v5.0.0.
  abstract class LateInteractionModelType
    include JSON::Serializable
    use_json_discriminator "type", {"preset" => LateInteractionModelType::Preset, "custom" => LateInteractionModelType::Custom, "plugin" => LateInteractionModelType::Plugin}
  end

  class LateInteractionModelType::Preset < LateInteractionModelType
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "preset"
    getter name : String = ""
  end

  class LateInteractionModelType::Custom < LateInteractionModelType
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "custom"
    getter model_id : String = ""
    getter model_file : String?
    getter additional_files : Array(String) = [] of String
    getter max_length : Int64?
  end

  class LateInteractionModelType::Plugin < LateInteractionModelType
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "plugin"
    getter name : String = ""
  end

  # Which table structure recognition model to use.
  #
  # Controls the model used for table cell detection within layout-detected
  # table regions. Wire format is snake_case in all serializers (JSON, TOML,
  # YAML).
  enum TableModel
    Tatr
    SlanetWired
    SlanetWireless
    SlanetPlus
    SlanetAuto
    Disabled
  end

  # How to resolve overlapping native vs layout (TATR/SLANeXT) tables.
  #
  # When both native oxide detection and the layout table model produce a table for
  # the same page region, one must be dropped. This controls which one wins. Wire
  # format is snake_case in all serializers (JSON, TOML, YAML).
  enum TableOverlapPreference
    Content
    Native
    Layout
  end

  # Which PDF pages the layout model runs on.
  #
  # Layout detection renders each selected page to a raster and runs ONNX
  # inference on it, which dominates extraction cost. This controls page
  # selection; [`LayoutStrategy::Always`] preserves the historical behavior of
  # running on every page. Wire format is snake_case in all serializers
  # (JSON, TOML, YAML).
  enum LayoutStrategy
    Always
    Auto
  end

  # How a structured-extraction preset is dispatched to the model.
  #
  # This is the preset-facing call mode (the `preferred_call_mode` field of a
  # `Preset`). The structured pipeline has a richer
  # runtime-only decision enum with skip and fallback states; this 3-variant
  # type is the stable, serializable surface presets and bindings depend on.
  enum CallMode
    TextOnly
    VisionOnly
    TextPlusVision
  end

  # How partial results from multiple model calls (e.g. per page batch) are combined.
  #
  # Canonical home for the merge strategy referenced by presets and by the
  # structured pipeline's post-processing. There is intentionally only one merge
  # type across the crate — do not introduce a second.
  enum MergeMode
    ObjectMerge
    ArrayConcat
    ObjectFirst
  end

  # NER backend selector.
  enum NerBackendKind
    Onnx
    Llm
  end

  # Policy controlling when VLM (Vision Language Model) OCR is used as a fallback.
  #
  # This knob is syntactic sugar over the explicit [`OcrPipelineConfig`] stage
  # ordering. When `vlm_fallback` is set and `pipeline` is `None`, an equivalent
  # pipeline is synthesised at extraction time:
  #
  # - [`VlmFallbackPolicy::Disabled`] — no synthesis; single-backend mode (default).
  # - [`VlmFallbackPolicy::OnLowQuality`] — tries the classical backend first; if the
  #   result scores below `quality_threshold`, tries VLM.
  # - [`VlmFallbackPolicy::Always`] — skips the classical backend and sends every page
  #   to the VLM.
  #
  # When [`OcrConfig::pipeline`] is explicitly set, `vlm_fallback` is ignored — the
  # explicit pipeline takes precedence.
  # Raises:
  #   Both `OnLowQuality` and `Always` require [`OcrConfig::vlm_config`] to be `Some`.
  # Constructing an [`OcrConfig`] with one of these policies but no `vlm_config` is
  # detected by `OcrConfig::validate` and will surface as a
  # `Validation` error at extraction time, not a panic.
  abstract class VlmFallbackPolicy
    include JSON::Serializable
    use_json_discriminator "mode", {"disabled" => VlmFallbackPolicy::Disabled, "on_low_quality" => VlmFallbackPolicy::OnLowQuality, "always" => VlmFallbackPolicy::Always}
  end

  class VlmFallbackPolicy::Disabled < VlmFallbackPolicy
    include JSON::Serializable
    @[JSON::Field(key: "mode")]
    getter mode : String = "disabled"
  end

  class VlmFallbackPolicy::OnLowQuality < VlmFallbackPolicy
    include JSON::Serializable
    @[JSON::Field(key: "mode")]
    getter mode : String = "on_low_quality"
    getter quality_threshold : Float64 = 0.0
  end

  class VlmFallbackPolicy::Always < VlmFallbackPolicy
    include JSON::Serializable
    @[JSON::Field(key: "mode")]
    getter mode : String = "always"
  end

  # Which pages of a PDF get OCR'd when neither `force_ocr` nor `force_ocr_pages` applies.
  abstract class OcrStrategy
    include JSON::Serializable
    use_json_discriminator "mode", {"auto" => OcrStrategy::Auto, "scanned_pages" => OcrStrategy::ScannedPages}
  end

  class OcrStrategy::Auto < OcrStrategy
    include JSON::Serializable
    @[JSON::Field(key: "mode")]
    getter mode : String = "auto"
  end

  class OcrStrategy::ScannedPages < OcrStrategy
    include JSON::Serializable
    @[JSON::Field(key: "mode")]
    getter mode : String = "scanned_pages"
    getter min_confidence : Float64 = 0.0
  end

  # Controls how markdown tables are handled when they exceed the chunk size limit.
  #
  # Only applies when `chunker_type` is `Markdown`.
  #
  # # Variants
  #
  # * `Split` - Default behavior: tables are split at row boundaries like any
  #   other block element. Continuation chunks contain only data rows without
  #   the header, which can break downstream consumers that need column context.
  # * `RepeatHeader` - Prepend the table header (header row + separator row) to
  #   every continuation chunk that contains data rows from the same table.
  #   Adds a small amount of duplicate text but ensures each chunk is
  #   self-contained for extraction, search, and LLM consumption.
  enum TableChunkingMode
    Split
    RepeatHeader
  end

  # Type of text chunker to use.
  #
  # # Variants
  #
  # * `Text` - Generic text splitter, splits on whitespace and punctuation
  # * `Markdown` - Markdown-aware splitter, preserves formatting and structure
  # * `Yaml` - YAML-aware splitter, creates one chunk per top-level key
  # * `Semantic` - Topic-aware chunker. With an `EmbeddingConfig`, splits at
  #   embedding-based topic shifts tuned by `topic_threshold` (default 0.75,
  #   lower = more splits). Without an embedding, falls back to a
  #   structural-boundary heuristic (ALL-CAPS headers, numbered sections,
  #   blank-line paragraphs) and merges groups into chunks capped at
  #   `max_characters` (default 1000). `topic_threshold` has no effect in the
  #   fallback path. For best results, pair with an embedding model.
  enum ChunkerType
    Text
    Markdown
    Yaml
    Semantic
  end

  # How chunk size is measured.
  #
  # Defaults to `Characters` (Unicode character count). When using token-based sizing,
  # chunks are sized by token count according to the specified tokenizer.
  #
  # Token-based sizing uses HuggingFace tokenizers loaded at runtime, or a tokenizer
  # backend you register yourself. Any tokenizer available on HuggingFace Hub can be
  # used, including OpenAI-compatible tokenizers (e.g., `Xenova/gpt-4o`,
  # `Xenova/cl100k_base`). To size chunks with your own tokenizer instead (llama.cpp/GGUF
  # vocabularies, SentencePiece models, custom vocabs), register a `TokenizerBackend`
  # with `register_tokenizer_backend` and set `model` to the registered name.
  abstract class ChunkSizing
    include JSON::Serializable
    use_json_discriminator "type", {"characters" => ChunkSizing::Characters, "tokenizer" => ChunkSizing::Tokenizer}
  end

  class ChunkSizing::Characters < ChunkSizing
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "characters"
  end

  class ChunkSizing::Tokenizer < ChunkSizing
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "tokenizer"
    getter model : String = ""
    getter cache_dir : String?
  end

  # Embedding model types supported by Xberg.
  abstract class EmbeddingModelType
    include JSON::Serializable
    use_json_discriminator "type", {"preset" => EmbeddingModelType::Preset, "custom" => EmbeddingModelType::Custom, "llm" => EmbeddingModelType::Llm, "plugin" => EmbeddingModelType::Plugin}
  end

  class EmbeddingModelType::Preset < EmbeddingModelType
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "preset"
    getter name : String = ""
  end

  class EmbeddingModelType::Custom < EmbeddingModelType
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "custom"
    getter model_id : String = ""
    getter dimensions : UInt64 = 0
  end

  class EmbeddingModelType::Llm < EmbeddingModelType
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "llm"
    getter llm : Xberg::LlmConfig
  end

  class EmbeddingModelType::Plugin < EmbeddingModelType
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "plugin"
    getter name : String = ""
  end

  # Selects how a local ONNX reranker's raw output tensor is turned into a score.
  #
  # - [`RerankerHead::CrossEncoder`] — classic single-logit cross-encoder head:
  #   the model emits `[batch, 1]` (or `[batch]`) logits; the caller applies
  #   sigmoid to get a `[0, 1]` score. This is the original, unchanged path.
  # - [`RerankerHead::Qwen3Generative`] — Qwen3 generative-reranker head: the
  #   model emits `[batch, seq, vocab]` logits; the score is `P("yes")` read
  #   from the last token's logits over the "yes"/"no" vocabulary entries,
  #   via a softmax over those two logits. Already a `[0, 1]` probability —
  #   no sigmoid is applied.
  #
  # Since v5.0.0.
  enum RerankerHead
    CrossEncoder
    Qwen3Generative
  end

  # Reranker model types supported by Xberg.
  #
  # Since v5.0.0.
  abstract class RerankerModelType
    include JSON::Serializable
    use_json_discriminator "type", {"preset" => RerankerModelType::Preset, "custom" => RerankerModelType::Custom, "llm" => RerankerModelType::Llm, "plugin" => RerankerModelType::Plugin}
  end

  class RerankerModelType::Preset < RerankerModelType
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "preset"
    getter name : String = ""
  end

  class RerankerModelType::Custom < RerankerModelType
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "custom"
    getter model_id : String = ""
    getter model_file : String?
    getter additional_files : Array(String) = [] of String
    getter max_length : Int64?
    getter head : Xberg::RerankerHead
  end

  class RerankerModelType::Llm < RerankerModelType
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "llm"
    getter llm : Xberg::LlmConfig
  end

  class RerankerModelType::Plugin < RerankerModelType
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "plugin"
    getter name : String = ""
  end

  # Sparse-embedding model types supported by Xberg.
  #
  # Since v5.0.0.
  abstract class SparseEmbeddingModelType
    include JSON::Serializable
    use_json_discriminator "type", {"preset" => SparseEmbeddingModelType::Preset, "custom" => SparseEmbeddingModelType::Custom, "plugin" => SparseEmbeddingModelType::Plugin}
  end

  class SparseEmbeddingModelType::Preset < SparseEmbeddingModelType
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "preset"
    getter name : String = ""
  end

  class SparseEmbeddingModelType::Custom < SparseEmbeddingModelType
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "custom"
    getter model_id : String = ""
    getter model_file : String?
    getter additional_files : Array(String) = [] of String
    getter max_length : Int64?
  end

  class SparseEmbeddingModelType::Plugin < SparseEmbeddingModelType
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "plugin"
    getter name : String = ""
  end

  # Supported Whisper model sizes.
  #
  # These map to published ONNX exports on Hugging Face (onnx-community or
  # similar orgs). The actual filenames and repos are resolved inside the
  # transcription engine.
  enum WhisperModel
    Tiny
    Base
    Small
    Medium
    LargeV3
  end

  # Content rendering mode for code extraction.
  #
  # Controls how extracted code content is represented in the `content` field
  # of `ExtractedDocument`.
  enum CodeContentMode
    Chunks
    Raw
    Structure
  end

  # Type of list detection.
  enum ListType
    Bullet
    Numbered
    Lettered
    Indented
  end

  # OCR backend types.
  enum OcrBackendType
    Tesseract
    PaddleOcr
    Candle
    Custom
  end

  # Processing stages for post-processors.
  #
  # Post-processors are executed in stage order (Early → Middle → Late).
  # Use stages to control the order of post-processing operations.
  enum ProcessingStage
    Early
    Middle
    Late
  end

  # Intensity level for the token-reduction pipeline.
  enum ReductionLevel
    Off
    Light
    Moderate
    Aggressive
    Maximum
  end

  # Type of PDF annotation.
  enum PdfAnnotationType
    Text
    Highlight
    Link
    Stamp
    Underline
    StrikeOut
    Squiggly
    Ink
    Square
    Circle
    Polygon
    PolyLine
    Line
    Caret
    FileAttachment
    Sound
    Movie
    Other
  end

  # Types of block-level elements in Djot.
  enum BlockType
    Paragraph
    Heading
    Blockquote
    CodeBlock
    ListItem
    OrderedList
    BulletList
    TaskList
    DefinitionList
    DefinitionTerm
    DefinitionDescription
    Div
    Section
    ThematicBreak
    RawBlock
    MathDisplay
  end

  # Types of inline elements in Djot.
  enum InlineType
    Text
    Strong
    Emphasis
    Highlight
    Subscript
    Superscript
    Insert
    Delete
    Code
    Link
    Image
    Span
    Math
    RawInline
    FootnoteRef
    Symbol
  end

  # Semantic kind of a relationship between document elements.
  enum RelationshipKind
    FootnoteReference
    CitationReference
    InternalLink
    Caption
    Label
    TocEntry
    CrossReference
  end

  # Content layer classification for document nodes.
  #
  # Replaces separate body/furniture arrays with per-node granularity.
  enum ContentLayer
    Body
    Header
    Footer
    Footnote
  end

  # Tagged enum for node content. Each variant carries only type-specific data.
  #
  # Uses `#[serde(tag = "node_type")]` to avoid "type" keyword collision in
  # Go/Java/TypeScript bindings.
  abstract class NodeContent
    include JSON::Serializable
    use_json_discriminator "node_type", {"title" => NodeContent::Title, "heading" => NodeContent::Heading, "paragraph" => NodeContent::Paragraph, "list" => NodeContent::List, "list_item" => NodeContent::ListItem, "table" => NodeContent::Table, "image" => NodeContent::Image, "code" => NodeContent::Code, "quote" => NodeContent::Quote, "formula" => NodeContent::Formula, "footnote" => NodeContent::Footnote, "group" => NodeContent::Group, "page_break" => NodeContent::PageBreak, "slide" => NodeContent::Slide, "definition_list" => NodeContent::DefinitionList, "definition_item" => NodeContent::DefinitionItem, "citation" => NodeContent::Citation, "admonition" => NodeContent::Admonition, "raw_block" => NodeContent::RawBlock, "metadata_block" => NodeContent::MetadataBlock}
  end

  class NodeContent::Title < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "title"
    getter text : String = ""
  end

  class NodeContent::Heading < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "heading"
    getter level : UInt8 = 0
    getter text : String = ""
  end

  class NodeContent::Paragraph < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "paragraph"
    getter text : String = ""
  end

  class NodeContent::List < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "list"
    getter ordered : Bool = false
  end

  class NodeContent::ListItem < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "list_item"
    getter text : String = ""
  end

  class NodeContent::Table < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "table"
    getter grid : Xberg::TableGrid
  end

  class NodeContent::Image < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "image"
    getter description : String?
    getter image_index : UInt32?
    getter src : String?
  end

  class NodeContent::Code < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "code"
    getter text : String = ""
    getter language : String?
  end

  class NodeContent::Quote < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "quote"
  end

  class NodeContent::Formula < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "formula"
    getter text : String = ""
  end

  class NodeContent::Footnote < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "footnote"
    getter text : String = ""
  end

  class NodeContent::Group < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "group"
    getter label : String?
    getter heading_level : UInt8?
    getter heading_text : String?
  end

  class NodeContent::PageBreak < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "page_break"
  end

  class NodeContent::Slide < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "slide"
    getter number : UInt32 = 0
    getter title : String?
  end

  class NodeContent::DefinitionList < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "definition_list"
  end

  class NodeContent::DefinitionItem < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "definition_item"
    getter term : String = ""
    getter definition : String = ""
  end

  class NodeContent::Citation < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "citation"
    getter key : String = ""
    getter text : String = ""
  end

  class NodeContent::Admonition < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "admonition"
    getter kind : String = ""
    getter title : String?
  end

  class NodeContent::RawBlock < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "raw_block"
    getter format : String = ""
    getter content : String = ""
  end

  class NodeContent::MetadataBlock < NodeContent
    include JSON::Serializable
    @[JSON::Field(key: "node_type")]
    getter node_type : String = "metadata_block"
  end

  # Types of inline text annotations.
  abstract class AnnotationKind
    include JSON::Serializable
    use_json_discriminator "annotation_type", {"bold" => AnnotationKind::Bold, "italic" => AnnotationKind::Italic, "underline" => AnnotationKind::Underline, "strikethrough" => AnnotationKind::Strikethrough, "code" => AnnotationKind::Code, "subscript" => AnnotationKind::Subscript, "superscript" => AnnotationKind::Superscript, "link" => AnnotationKind::Link, "highlight" => AnnotationKind::Highlight, "color" => AnnotationKind::Color, "font_size" => AnnotationKind::FontSize, "custom" => AnnotationKind::Custom}
  end

  class AnnotationKind::Bold < AnnotationKind
    include JSON::Serializable
    @[JSON::Field(key: "annotation_type")]
    getter annotation_type : String = "bold"
  end

  class AnnotationKind::Italic < AnnotationKind
    include JSON::Serializable
    @[JSON::Field(key: "annotation_type")]
    getter annotation_type : String = "italic"
  end

  class AnnotationKind::Underline < AnnotationKind
    include JSON::Serializable
    @[JSON::Field(key: "annotation_type")]
    getter annotation_type : String = "underline"
  end

  class AnnotationKind::Strikethrough < AnnotationKind
    include JSON::Serializable
    @[JSON::Field(key: "annotation_type")]
    getter annotation_type : String = "strikethrough"
  end

  class AnnotationKind::Code < AnnotationKind
    include JSON::Serializable
    @[JSON::Field(key: "annotation_type")]
    getter annotation_type : String = "code"
  end

  class AnnotationKind::Subscript < AnnotationKind
    include JSON::Serializable
    @[JSON::Field(key: "annotation_type")]
    getter annotation_type : String = "subscript"
  end

  class AnnotationKind::Superscript < AnnotationKind
    include JSON::Serializable
    @[JSON::Field(key: "annotation_type")]
    getter annotation_type : String = "superscript"
  end

  class AnnotationKind::Link < AnnotationKind
    include JSON::Serializable
    @[JSON::Field(key: "annotation_type")]
    getter annotation_type : String = "link"
    getter url : String = ""
    getter title : String?
  end

  class AnnotationKind::Highlight < AnnotationKind
    include JSON::Serializable
    @[JSON::Field(key: "annotation_type")]
    getter annotation_type : String = "highlight"
  end

  class AnnotationKind::Color < AnnotationKind
    include JSON::Serializable
    @[JSON::Field(key: "annotation_type")]
    getter annotation_type : String = "color"
    getter value : String = ""
  end

  class AnnotationKind::FontSize < AnnotationKind
    include JSON::Serializable
    @[JSON::Field(key: "annotation_type")]
    getter annotation_type : String = "font_size"
    getter value : String = ""
  end

  class AnnotationKind::Custom < AnnotationKind
    include JSON::Serializable
    @[JSON::Field(key: "annotation_type")]
    getter annotation_type : String = "custom"
    getter name : String = ""
    getter value : String?
  end

  # Standard entity categories produced by built-in NER backends.
  #
  # The `Custom(String)` variant lets caller-supplied categories (e.g. LLM
  # schemas) flow through without losing fidelity to the consumer.
  abstract class EntityCategory
    def self.new(pull : ::JSON::PullParser) : EntityCategory
      case pull.kind
      when .string?
        __tag = pull.read_string
        case __tag
        when "person" then return EntityCategory::Person.new
        when "organization" then return EntityCategory::Organization.new
        when "location" then return EntityCategory::Location.new
        when "date" then return EntityCategory::Date.new
        when "time" then return EntityCategory::Time.new
        when "money" then return EntityCategory::Money.new
        when "percent" then return EntityCategory::Percent.new
        when "email" then return EntityCategory::Email.new
        when "phone" then return EntityCategory::Phone.new
        when "url" then return EntityCategory::Url.new
        else raise ::JSON::ParseException.new("unknown EntityCategory variant: #{__tag}", *pull.location)
        end
      when .begin_object?
        __result : EntityCategory? = nil
        pull.read_object do |__key|
          case __key
          when "custom" then __result = EntityCategory::Custom.new(pull)
          else pull.skip
          end
        end
        return __result || raise ::JSON::ParseException.new("empty EntityCategory object", *pull.location)
      else
        raise ::JSON::ParseException.new("invalid EntityCategory JSON", *pull.location)
      end
    end

    def self.from_json(string : String) : EntityCategory
      new(::JSON::PullParser.new(string))
    end

    abstract def to_json(json : ::JSON::Builder)
  end

  class EntityCategory::Person < EntityCategory
    def to_json(json : ::JSON::Builder)
      json.string("person")
    end
  end

  class EntityCategory::Organization < EntityCategory
    def to_json(json : ::JSON::Builder)
      json.string("organization")
    end
  end

  class EntityCategory::Location < EntityCategory
    def to_json(json : ::JSON::Builder)
      json.string("location")
    end
  end

  class EntityCategory::Date < EntityCategory
    def to_json(json : ::JSON::Builder)
      json.string("date")
    end
  end

  class EntityCategory::Time < EntityCategory
    def to_json(json : ::JSON::Builder)
      json.string("time")
    end
  end

  class EntityCategory::Money < EntityCategory
    def to_json(json : ::JSON::Builder)
      json.string("money")
    end
  end

  class EntityCategory::Percent < EntityCategory
    def to_json(json : ::JSON::Builder)
      json.string("percent")
    end
  end

  class EntityCategory::Email < EntityCategory
    def to_json(json : ::JSON::Builder)
      json.string("email")
    end
  end

  class EntityCategory::Phone < EntityCategory
    def to_json(json : ::JSON::Builder)
      json.string("phone")
    end
  end

  class EntityCategory::Url < EntityCategory
    def to_json(json : ::JSON::Builder)
      json.string("url")
    end
  end

  class EntityCategory::Custom < EntityCategory
    getter value : String
    def initialize(@value : String)
    end
    def self.new(pull : ::JSON::PullParser) : EntityCategory::Custom
      __v = String.new(pull)
      new(__v)
    end
    def to_json(json : ::JSON::Builder)
      json.object do
        json.field("custom") do
          @value.to_json(json)
        end
      end
    end
  end

  # How the extracted text was produced.
  enum ExtractionMethod
    Native
    Ocr
    Mixed
  end

  # Semantic structural classification of a text chunk.
  #
  # Assigned by the heuristic classifier in `chunking::classifier`.
  # Defaults to `Unknown` when no rule matches.
  # Designed to be extended in future versions without breaking changes.
  enum ChunkType
    Heading
    PartyList
    Definitions
    OperativeClause
    SignatureBlock
    Schedule
    TableLike
    Formula
    CodeBlock
    Function
    Class
    Module
    Image
    OrgChart
    Diagram
    Unknown
  end

  # Heuristic classification of what an image likely depicts.
  enum ImageKind
    Photograph
    Diagram
    Chart
    Drawing
    TextBlock
    Decoration
    Logo
    Icon
    TileFragment
    Mask
    PageRaster
    Unknown
  end

  # Result-shape selection for extraction results.
  #
  # Distinct from `OutputFormat` (which controls rendering — Plain, Markdown,
  # HTML, etc.). `ResultFormat` controls the *shape* of the result: a unified content
  # blob vs. an element-based decomposition.
  enum ResultFormat
    Unified
    ElementBased
  end

  # Semantic element type classification.
  #
  # Categorizes text content into semantic units for downstream processing.
  # Supports the element types commonly found in Unstructured documents.
  enum ElementType
    Title
    NarrativeText
    Heading
    ListItem
    Table
    Image
    PageBreak
    CodeBlock
    BlockQuote
    Footer
    Header
  end

  # Kind of a PDF form field.
  #
  # Mirrors `pdf_oxide`'s widget field taxonomy without leaking the upstream
  # type across the binding surface.
  enum FormFieldType
    Text
    Checkbox
    Radio
    Choice
    Signature
    Button
    Unknown
  end

  # Format-specific metadata (discriminated union).
  #
  # Only one format type can exist per extraction result. This provides
  # type-safe, clean metadata without nested optionals.
  abstract class FormatMetadata
    include JSON::Serializable
    use_json_discriminator "format_type", {"pdf" => FormatMetadata::Pdf, "docx" => FormatMetadata::Docx, "excel" => FormatMetadata::Excel, "email" => FormatMetadata::Email, "pptx" => FormatMetadata::Pptx, "archive" => FormatMetadata::Archive, "image" => FormatMetadata::Image, "xml" => FormatMetadata::Xml, "text" => FormatMetadata::Text, "html" => FormatMetadata::Html, "ocr" => FormatMetadata::Ocr, "csv" => FormatMetadata::Csv, "bibtex" => FormatMetadata::Bibtex, "citation" => FormatMetadata::Citation, "fiction_book" => FormatMetadata::FictionBook, "dbf" => FormatMetadata::Dbf, "jats" => FormatMetadata::Jats, "epub" => FormatMetadata::Epub, "pst" => FormatMetadata::Pst, "audio" => FormatMetadata::Audio, "code" => FormatMetadata::Code}
  end

  class FormatMetadata::Pdf < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "pdf"
    getter pdf_version : String?
    getter producer : String?
    getter is_encrypted : Bool?
    getter width : Int64?
    getter height : Int64?
    getter page_count : UInt32?
    getter scanned_confidence : Float32?
    getter scanned_pages : Array(UInt32)?
    getter layout_gated_pages : Array(UInt32)?
    getter layout_gate_reasons : Array(String)?
  end

  class FormatMetadata::Docx < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "docx"
    getter core_properties : CoreProperties?
    getter app_properties : DocxAppProperties?
    getter custom_properties : Hash(String, JSON::Any)?
  end

  class FormatMetadata::Excel < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "excel"
    getter sheet_count : UInt32?
    getter sheet_names : Array(String)?
  end

  class FormatMetadata::Email < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "email"
    getter from_email : String?
    getter from_name : String?
    getter to_emails : Array(String) = [] of String
    getter cc_emails : Array(String) = [] of String
    getter bcc_emails : Array(String) = [] of String
    getter message_id : String?
    getter attachments : Array(String) = [] of String
  end

  class FormatMetadata::Pptx < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "pptx"
    getter slide_count : UInt32 = 0
    getter slide_names : Array(String) = [] of String
    getter image_count : UInt32?
    getter table_count : UInt32?
  end

  class FormatMetadata::Archive < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "archive"
    getter format : String = ""
    getter file_count : UInt32 = 0
    getter file_list : Array(String) = [] of String
    getter total_size : UInt64 = 0
    getter compressed_size : UInt64?
  end

  class FormatMetadata::Image < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "image"
    getter width : UInt32 = 0
    getter height : UInt32 = 0
    getter format : String = ""
    getter exif : Hash(String, String) = {} of String => String
  end

  class FormatMetadata::Xml < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "xml"
    getter element_count : UInt32 = 0
    getter unique_elements : Array(String) = [] of String
  end

  class FormatMetadata::Text < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "text"
    getter line_count : UInt32 = 0
    getter word_count : UInt32 = 0
    getter character_count : UInt32 = 0
    getter headers : Array(String)?
  end

  class FormatMetadata::Html < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "html"
    getter title : String?
    getter description : String?
    getter keywords : Array(String) = [] of String
    getter author : String?
    getter canonical_url : String?
    getter base_href : String?
    getter language : String?
    getter text_direction : TextDirection?
    getter open_graph : Hash(String, String) = {} of String => String
    getter twitter_card : Hash(String, String) = {} of String => String
    getter meta_tags : Hash(String, String) = {} of String => String
    getter headers : Array(HeaderMetadata) = [] of HeaderMetadata
    getter links : Array(LinkMetadata) = [] of LinkMetadata
    getter images : Array(ImageMetadataType) = [] of ImageMetadataType
    getter structured_data : Array(StructuredData) = [] of StructuredData
  end

  class FormatMetadata::Ocr < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "ocr"
    getter language : String = ""
    getter psm : Int32 = 0
    getter output_format : String = ""
    getter table_count : UInt32 = 0
    getter table_rows : UInt32?
    getter table_cols : UInt32?
  end

  class FormatMetadata::Csv < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "csv"
    getter row_count : UInt32 = 0
    getter column_count : UInt32 = 0
    getter delimiter : String?
    getter has_header : Bool = false
    getter column_types : Array(String)?
  end

  class FormatMetadata::Bibtex < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "bibtex"
    getter entry_count : UInt64 = 0
    getter citation_keys : Array(String) = [] of String
    getter authors : Array(String) = [] of String
    getter year_range : YearRange?
    getter entry_types : Hash(String, UInt64)?
  end

  class FormatMetadata::Citation < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "citation"
    getter citation_count : UInt64 = 0
    getter format : String?
    getter authors : Array(String) = [] of String
    getter year_range : YearRange?
    getter dois : Array(String) = [] of String
    getter keywords : Array(String) = [] of String
  end

  class FormatMetadata::FictionBook < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "fiction_book"
    getter genres : Array(String) = [] of String
    getter sequences : Array(String) = [] of String
    @[JSON::Field(key: "annotation")]
    getter annotation_ : String?
  end

  class FormatMetadata::Dbf < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "dbf"
    getter record_count : UInt64 = 0
    getter field_count : UInt64 = 0
    getter fields : Array(DbfFieldInfo) = [] of DbfFieldInfo
  end

  class FormatMetadata::Jats < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "jats"
    getter copyright : String?
    getter license : String?
    getter history_dates : Hash(String, String) = {} of String => String
    getter contributor_roles : Array(ContributorRole) = [] of ContributorRole
  end

  class FormatMetadata::Epub < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "epub"
    getter coverage : String?
    getter dc_format : String?
    getter relation : String?
    getter source : String?
    getter dc_type : String?
    getter cover_image : String?
  end

  class FormatMetadata::Pst < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "pst"
    getter message_count : UInt64 = 0
  end

  class FormatMetadata::Audio < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "audio"
    getter duration_ms : UInt64?
    getter codec : String?
    getter container : String?
    getter sample_rate_hz : UInt32?
    getter channels : UInt16?
    getter bitrate : UInt32?
  end

  class FormatMetadata::Code < FormatMetadata
    include JSON::Serializable
    @[JSON::Field(key: "format_type")]
    getter format_type : String = "code"
    getter chunks : Array(CodeChunkInfo) = [] of CodeChunkInfo
    getter data : CodeDataNode?
  end

  # Discriminates the shape of a [`CodeDataNode`].
  #
  # Purpose-built mirror of `tree_sitter_language_pack::DataNodeKind` — kept as an
  # xberg-owned type so binding generators never need to resolve the upstream crate's
  # types across FFI/language boundaries.
  enum CodeDataNodeKind
    KeyValue
    Element
    Sequence
  end

  # Text direction enumeration for HTML documents.
  enum TextDirection
    LeftToRight
    RightToLeft
    Auto
  end
  module TextDirectionConverter
    def self.from_json(pull : JSON::PullParser) : TextDirection
      case pull.read_string
      when "ltr" then TextDirection::LeftToRight
      when "rtl" then TextDirection::RightToLeft
      when "auto" then TextDirection::Auto
      else pull.raise "Unknown TextDirection value"
      end
    end
    def self.to_json(value : TextDirection, json : JSON::Builder)
      json.string(case value
      when TextDirection::LeftToRight then "ltr"
      when TextDirection::RightToLeft then "rtl"
      when TextDirection::Auto then "auto"
      end)
    end
  end

  # Link type classification.
  enum LinkType
    Anchor
    Internal
    External
    Email
    Phone
    Other
  end

  # Image type classification.
  enum ImageType
    DataUri
    InlineSvg
    External
    Relative
  end
  module ImageTypeConverter
    def self.from_json(pull : JSON::PullParser) : ImageType
      case pull.read_string
      when "data-uri" then ImageType::DataUri
      when "inline-svg" then ImageType::InlineSvg
      when "external" then ImageType::External
      when "relative" then ImageType::Relative
      else pull.raise "Unknown ImageType value"
      end
    end
    def self.to_json(value : ImageType, json : JSON::Builder)
      json.string(case value
      when ImageType::DataUri then "data-uri"
      when ImageType::InlineSvg then "inline-svg"
      when ImageType::External then "external"
      when ImageType::Relative then "relative"
      end)
    end
  end

  # Structured data type classification.
  enum StructuredDataType
    JsonLd
    Microdata
    RdFa
  end
  module StructuredDataTypeConverter
    def self.from_json(pull : JSON::PullParser) : StructuredDataType
      case pull.read_string
      when "json-ld" then StructuredDataType::JsonLd
      when "microdata" then StructuredDataType::Microdata
      when "rdfa" then StructuredDataType::RdFa
      else pull.raise "Unknown StructuredDataType value"
      end
    end
    def self.to_json(value : StructuredDataType, json : JSON::Builder)
      json.string(case value
      when StructuredDataType::JsonLd then "json-ld"
      when StructuredDataType::Microdata then "microdata"
      when StructuredDataType::RdFa then "rdfa"
      end)
    end
  end

  # Bounding geometry for an OCR element.
  #
  # Supports both axis-aligned rectangles (from Tesseract) and 4-point quadrilaterals
  # (from PaddleOCR and rotated text detection).
  abstract class OcrBoundingGeometry
    include JSON::Serializable
    use_json_discriminator "type", {"rectangle" => OcrBoundingGeometry::Rectangle, "quadrilateral" => OcrBoundingGeometry::Quadrilateral}
  end

  class OcrBoundingGeometry::Rectangle < OcrBoundingGeometry
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "rectangle"
    getter left : UInt32 = 0
    getter top : UInt32 = 0
    getter width : UInt32 = 0
    getter height : UInt32 = 0
  end

  class OcrBoundingGeometry::Quadrilateral < OcrBoundingGeometry
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "quadrilateral"
  end

  # Hierarchical level of an OCR element.
  #
  # Maps to Tesseract's page segmentation hierarchy and provides
  # equivalent semantics for PaddleOCR.
  enum OcrElementLevel
    Word
    Line
    Block
    Page
  end

  # Type of paginated unit in a document.
  #
  # Distinguishes between different types of "pages" (PDF pages, presentation slides, spreadsheet sheets).
  enum PageUnitType
    Page
    Slide
    Sheet
  end

  # Strategy applied when a PII match is rewritten.
  enum RedactionStrategy
    Mask
    Hash
    TokenReplace
    Drop
  end

  # PII categories the pattern engine recognises.
  abstract class PiiCategory
    def self.new(pull : ::JSON::PullParser) : PiiCategory
      case pull.kind
      when .string?
        __tag = pull.read_string
        case __tag
        when "email" then return PiiCategory::Email.new
        when "phone" then return PiiCategory::Phone.new
        when "ssn" then return PiiCategory::Ssn.new
        when "credit_card" then return PiiCategory::CreditCard.new
        when "postal_code" then return PiiCategory::PostalCode.new
        when "ip_address" then return PiiCategory::IpAddress.new
        when "iban" then return PiiCategory::Iban.new
        when "swift_bic" then return PiiCategory::SwiftBic.new
        when "date_of_birth" then return PiiCategory::DateOfBirth.new
        when "person" then return PiiCategory::Person.new
        when "organization" then return PiiCategory::Organization.new
        when "location" then return PiiCategory::Location.new
        else raise ::JSON::ParseException.new("unknown PiiCategory variant: #{__tag}", *pull.location)
        end
      when .begin_object?
        __result : PiiCategory? = nil
        pull.read_object do |__key|
          case __key
          when "custom" then __result = PiiCategory::Custom.new(pull)
          else pull.skip
          end
        end
        return __result || raise ::JSON::ParseException.new("empty PiiCategory object", *pull.location)
      else
        raise ::JSON::ParseException.new("invalid PiiCategory JSON", *pull.location)
      end
    end

    def self.from_json(string : String) : PiiCategory
      new(::JSON::PullParser.new(string))
    end

    abstract def to_json(json : ::JSON::Builder)
  end

  class PiiCategory::Email < PiiCategory
    def to_json(json : ::JSON::Builder)
      json.string("email")
    end
  end

  class PiiCategory::Phone < PiiCategory
    def to_json(json : ::JSON::Builder)
      json.string("phone")
    end
  end

  class PiiCategory::Ssn < PiiCategory
    def to_json(json : ::JSON::Builder)
      json.string("ssn")
    end
  end

  class PiiCategory::CreditCard < PiiCategory
    def to_json(json : ::JSON::Builder)
      json.string("credit_card")
    end
  end

  class PiiCategory::PostalCode < PiiCategory
    def to_json(json : ::JSON::Builder)
      json.string("postal_code")
    end
  end

  class PiiCategory::IpAddress < PiiCategory
    def to_json(json : ::JSON::Builder)
      json.string("ip_address")
    end
  end

  class PiiCategory::Iban < PiiCategory
    def to_json(json : ::JSON::Builder)
      json.string("iban")
    end
  end

  class PiiCategory::SwiftBic < PiiCategory
    def to_json(json : ::JSON::Builder)
      json.string("swift_bic")
    end
  end

  class PiiCategory::DateOfBirth < PiiCategory
    def to_json(json : ::JSON::Builder)
      json.string("date_of_birth")
    end
  end

  class PiiCategory::Person < PiiCategory
    def to_json(json : ::JSON::Builder)
      json.string("person")
    end
  end

  class PiiCategory::Organization < PiiCategory
    def to_json(json : ::JSON::Builder)
      json.string("organization")
    end
  end

  class PiiCategory::Location < PiiCategory
    def to_json(json : ::JSON::Builder)
      json.string("location")
    end
  end

  class PiiCategory::Custom < PiiCategory
    getter value : String
    def initialize(@value : String)
    end
    def self.new(pull : ::JSON::PullParser) : PiiCategory::Custom
      __v = String.new(pull)
      new(__v)
    end
    def to_json(json : ::JSON::Builder)
      json.object do
        json.field("custom") do
          @value.to_json(json)
        end
      end
    end
  end

  # A single line in a unified-diff hunk.
  #
  # Defined here (rather than only in `crate::diff`) so `RevisionDelta` can
  # reference it unconditionally, without requiring the `diff` Cargo feature.
  # `crate::diff` re-exports this type verbatim.
  abstract class DiffLine
    include JSON::Serializable
    use_json_discriminator "kind", {"context" => DiffLine::Context, "added" => DiffLine::Added, "removed" => DiffLine::Removed}
  end

  class DiffLine::Context < DiffLine
    include JSON::Serializable
    @[JSON::Field(key: "kind")]
    getter kind : String = "context"
    getter value : String
    def initialize(@value : String)
    end
  end

  class DiffLine::Added < DiffLine
    include JSON::Serializable
    @[JSON::Field(key: "kind")]
    getter kind : String = "added"
    getter value : String
    def initialize(@value : String)
    end
  end

  class DiffLine::Removed < DiffLine
    include JSON::Serializable
    @[JSON::Field(key: "kind")]
    getter kind : String = "removed"
    getter value : String
    def initialize(@value : String)
    end
  end

  # Semantic classification of a tracked change.
  enum RevisionKind
    Insertion
    Deletion
    FormatChange
    Comment
  end

  # Best-effort document location for a revision.
  abstract class RevisionAnchor
    include JSON::Serializable
    use_json_discriminator "type", {"paragraph" => RevisionAnchor::Paragraph, "table_cell" => RevisionAnchor::TableCell, "page" => RevisionAnchor::Page, "slide" => RevisionAnchor::Slide, "sheet" => RevisionAnchor::Sheet}
  end

  class RevisionAnchor::Paragraph < RevisionAnchor
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "paragraph"
    getter index : UInt64 = 0
  end

  class RevisionAnchor::TableCell < RevisionAnchor
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "table_cell"
    getter row : UInt64 = 0
    getter col : UInt64 = 0
    getter table_index : UInt64 = 0
  end

  class RevisionAnchor::Page < RevisionAnchor
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "page"
    getter index : UInt64 = 0
  end

  class RevisionAnchor::Slide < RevisionAnchor
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "slide"
    getter index : UInt64 = 0
  end

  class RevisionAnchor::Sheet < RevisionAnchor
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "sheet"
    getter index : UInt64 = 0
    getter name : String?
  end

  # Summarisation strategy.
  enum SummaryStrategy
    Extractive
    Abstractive
  end

  # Semantic classification of an extracted URI.
  enum UriKind
    Hyperlink
    Image
    Anchor
    Citation
    Reference
    Email
  end

  # Classification of a detected layout region that warrants VLM extraction.
  #
  # Each variant maps to a specific prompt optimised for that content type.
  # The mapping is intentionally narrow — only region kinds for which VLM
  # extraction provides a clear quality benefit over classical suppression.
  enum RegionKind
    Figure
    DenseTable
    ComplexLayout
    Caption
  end

  # Inference backend that an [`EmbeddingPreset`] runs on.
  #
  # `Onnx` presets require the `embeddings` feature (ONNX Runtime, not available on
  # WASM/Android x86_64 emulator). `Static` presets require `static-embeddings`
  # (pure-Rust model2vec inference, no ORT — the only dense-embedding backend
  # available on `no-ort-target`).
  #
  # Defaults to `Onnx` via `#[serde(default)]` so every existing preset payload
  # (which predates this field) keeps deserializing without change.
  enum EmbeddingsEmbeddingBackend
    Onnx
    Static
  end

  # Keyword algorithm selection.
  enum KeywordAlgorithm
    Yake
    Rake
  end

  # Schema-validation outcome surfaced as one of three buckets.
  #
  # Fold into the combined confidence score without leaking internal validation
  # error types.
  enum SchemaCompliance
    AllValid
    PartialValid
    AllInvalid
  end

  # Reason for not chunking a document.
  abstract class NoChunkingReason
    include JSON::Serializable
    use_json_discriminator "type", {"SmallFile" => NoChunkingReason::SmallFile, "FewPages" => NoChunkingReason::FewPages, "TextLayerDetected" => NoChunkingReason::TextLayerDetected, "FormatNotChunkable" => NoChunkingReason::FormatNotChunkable, "ChunkingDisabled" => NoChunkingReason::ChunkingDisabled, "FastTextExtraction" => NoChunkingReason::FastTextExtraction}
  end

  class NoChunkingReason::SmallFile < NoChunkingReason
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "SmallFile"
    getter size_bytes : UInt64 = 0
    getter threshold_bytes : UInt64 = 0
  end

  class NoChunkingReason::FewPages < NoChunkingReason
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "FewPages"
    getter page_count : UInt32 = 0
    getter threshold : UInt32 = 0
  end

  class NoChunkingReason::TextLayerDetected < NoChunkingReason
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "TextLayerDetected"
    getter text_coverage : Float32 = 0.0
    getter avg_chars_per_page : UInt32 = 0
  end

  class NoChunkingReason::FormatNotChunkable < NoChunkingReason
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "FormatNotChunkable"
    getter mime_type : String = ""
  end

  class NoChunkingReason::ChunkingDisabled < NoChunkingReason
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "ChunkingDisabled"
  end

  class NoChunkingReason::FastTextExtraction < NoChunkingReason
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "FastTextExtraction"
  end

  # Reason for chunking a document.
  abstract class ChunkingReason
    include JSON::Serializable
    use_json_discriminator "type", {"LargeFile" => ChunkingReason::LargeFile, "ManyPages" => ChunkingReason::ManyPages, "OcrRequired" => ChunkingReason::OcrRequired, "LargeAndManyPages" => ChunkingReason::LargeAndManyPages}
  end

  class ChunkingReason::LargeFile < ChunkingReason
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "LargeFile"
    getter size_bytes : UInt64 = 0
    getter threshold_bytes : UInt64 = 0
  end

  class ChunkingReason::ManyPages < ChunkingReason
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "ManyPages"
    getter page_count : UInt32 = 0
    getter threshold : UInt32 = 0
  end

  class ChunkingReason::OcrRequired < ChunkingReason
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "OcrRequired"
    getter page_count : UInt32 = 0
    getter force_ocr : Bool = false
  end

  class ChunkingReason::LargeAndManyPages < ChunkingReason
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "LargeAndManyPages"
    getter size_bytes : UInt64 = 0
    getter page_count : UInt32 = 0
  end

  # Reason for boundary detection.
  enum BoundaryReason
    Start
    PageOneMarker
    LetterheadReset
    DensityShift
    End
  end

  # High-level category used to group presets in the registry UI.
  enum PresetCategory
    Finance
    Identity
    Legal
    Logistics
    Medical
    Hr
    Other
  end

  # Page Segmentation Mode for Tesseract OCR.
  enum PsmMode
    OsdOnly
    AutoOsd
    AutoOnly
    Auto
    SingleColumn
    SingleBlockVertical
    SingleBlock
    SingleLine
    SingleWord
    CircleWord
    SingleChar
  end

  # Outcome of a single doctor check.
  enum ProbeStatus
    Pass
    Warn
    Fail
    Skip
  end

  # Which concrete ONNX inference engine PaddleOCR model loading uses.
  #
  # Mirrors `sceptre::Backend` for the PaddleOCR backend: `Ort` is the native,
  # full-featured path (acceleration/execution-provider hook, ONNX-embedded
  # dictionary metadata); `Tract` is the pure-Rust, CPU-only path used on targets
  # where `ort` cannot link (Android x86_64 emulator, WASM once wired).
  enum PaddleInferenceBackend
    Ort
    Tract
  end

  # Supported languages in PaddleOCR.
  #
  # Maps user-friendly language codes to paddle-ocr-rs language identifiers.
  enum PaddleLanguage
    English
    Chinese
    Japanese
    Korean
    German
    French
    Latin
    Cyrillic
    TraditionalChinese
    Thai
    Greek
    EastSlavic
    Arabic
    Devanagari
    Tamil
    Telugu
  end

  # The 18 canonical document layout classes.
  #
  # All model backends (RT-DETR, YOLO, etc.) map their native class IDs
  # to this shared set. Models with fewer classes (DocLayNet: 11, PubLayNet: 5)
  # map to the closest equivalent.
  #
  # Wire format is snake_case in all serializers (JSON, TOML, YAML).
  enum LayoutClass
    Caption
    Chart
    Footnote
    Formula
    ListItem
    PageFooter
    PageHeader
    Picture
    SectionHeader
    Table
    Text
    Title
    DocumentIndex
    Code
    CheckboxSelected
    CheckboxUnselected
    Form
    KeyValueRegion
  end

  # When to use the headless browser fallback.
  enum BrowserMode
    Auto
    Always
    Never
    Stealth
  end

  # Wait strategy for browser page rendering.
  enum BrowserWait
    NetworkIdle
    Selector
    Fixed
  end

  # Browser backend used for JavaScript rendering.
  enum BrowserBackend
    Chromiumoxide
    Native
  end

  # Authentication configuration.
  abstract class AuthConfig
    include JSON::Serializable
    use_json_discriminator "type", {"basic" => AuthConfig::Basic, "bearer" => AuthConfig::Bearer, "header" => AuthConfig::Header}
  end

  class AuthConfig::Basic < AuthConfig
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "basic"
    getter username : String = ""
    getter password : String = ""
  end

  class AuthConfig::Bearer < AuthConfig
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "bearer"
    getter token : String = ""
  end

  class AuthConfig::Header < AuthConfig
    include JSON::Serializable
    @[JSON::Field(key: "type")]
    getter type_ : String = "header"
    getter name : String = ""
    getter value : String = ""
  end

  # The category of a downloaded asset.
  enum AssetCategory
    Document
    Image
    Audio
    Video
    Font
    Stylesheet
    Script
    Archive
    Data
    Other
  end

  # HTML preprocessing aggressiveness level.
  #
  # Controls the extent of cleanup performed before conversion. Higher levels remove more elements.
  enum PreprocessingPreset
    Minimal
    Standard
    Aggressive
  end

  # Heading style options for Markdown output.
  #
  # Controls how headings (h1-h6) are rendered in the output Markdown.
  enum HeadingStyle
    Underlined
    Atx
    AtxClosed
  end

  # List indentation character type.
  #
  # Controls whether list items are indented with spaces or tabs.
  enum ListIndentType
    Spaces
    Tabs
  end

  # Whitespace handling strategy during conversion.
  #
  # Determines how sequences of whitespace characters (spaces, tabs, newlines) are processed.
  enum WhitespaceMode
    Normalized
    Strict
  end

  # Line break syntax in Markdown output.
  #
  # Controls how soft line breaks (from `<br>` or line breaks in source) are rendered.
  enum NewlineStyle
    Spaces
    Backslash
  end

  # Code block fence style in Markdown output.
  #
  # Determines how code blocks (`<pre><code>`) are rendered in Markdown.
  enum CodeBlockStyle
    Indented
    Backticks
    Tildes
  end

  # Highlight rendering style for `<mark>` elements.
  #
  # Controls how highlighted text is rendered in Markdown output.
  enum HighlightStyle
    DoubleEqual
    Html
    Bold
    None
  end

  # Link rendering style in Markdown output.
  #
  # Controls whether links and images use inline `[text](url)` syntax or
  # reference-style `[text][1]` syntax with definitions collected at the end.
  enum LinkStyle
    Inline
    Reference
  end

  # URL encoding strategy for link and image destinations.
  #
  # Controls how special characters in URL destinations are handled when they
  # require escaping to produce valid Markdown.
  #
  # The `Angle` variant (default) wraps the destination in angle brackets:
  # `[text](<url with spaces>)`. This is the CommonMark-specified escape hatch
  # but breaks when the URL itself contains `>`.
  #
  # The `Percent` variant percent-encodes every character that is not an RFC 3986
  # unreserved character or `/`, producing a destination safe for all Markdown
  # parsers: `[text](url%20with%20spaces)`.
  enum UrlEscapeStyle
    Angle
    Percent
  end

  # Aggregate statistics for a xberg cache directory.
  class CacheStats
    include JSON::Serializable
    # Total number of files currently in the cache directory.
    getter total_files : UInt64 = 0
    # Combined size of all cache files in megabytes.
    getter total_size_mb : Float64 = 0.0
    # Free disk space available on the cache volume, in megabytes.
    getter available_space_mb : Float64 = 0.0
    # Age of the oldest cache file in days (0.0 if the cache is empty).
    getter oldest_file_age_days : Float64 = 0.0
    # Age of the most recently written cache file in days (0.0 if the cache is empty).
    getter newest_file_age_days : Float64 = 0.0
    def initialize(
      @total_files : UInt64 = 0,
      @total_size_mb : Float64 = 0.0,
      @available_space_mb : Float64 = 0.0,
      @oldest_file_age_days : Float64 = 0.0,
      @newest_file_age_days : Float64 = 0.0
    )
    end
  end

  # Hardware acceleration configuration for ONNX Runtime models.
  #
  # Controls which execution provider (CPU, CoreML, CUDA, TensorRT) is used
  # for inference in layout detection and embedding generation.
  class AccelerationConfig
    include JSON::Serializable
    # Execution provider to use for ONNX inference.
    getter provider : ExecutionProviderType = ExecutionProviderType::Auto
    # GPU device ID (for CUDA/TensorRT). Ignored for CPU/CoreML/Auto.
    getter device_id : UInt32 = 0
    def initialize(
      @provider : ExecutionProviderType = ExecutionProviderType::Auto,
      @device_id : UInt32 = 0
    )
    end
  end

  # Configuration for the VLM captioning post-processor.
  class CaptioningConfig
    include JSON::Serializable
    # LLM configuration used for the VLM call.
    getter llm : LlmConfig = LlmConfig.from_json("{}")
    # Optional custom caption prompt. `None` uses the default `RegionKind::Caption`
    # prompt that ships with `crate::llm::region_extractor`.
    getter prompt : String?
    # Skip images whose `width * height` is below this threshold (in pixels).
    # Default `1_000` filters out icons and decorations.
    getter min_image_area : UInt32 = 0
    def initialize(
      @llm : LlmConfig = LlmConfig.from_json("{}"),
      @prompt : String? = nil,
      @min_image_area : UInt32 = 0
    )
    end
  end

  # A single labeled definition the chunk classifier may emit.
  #
  # Unlike `PageClassificationConfig::labels` (bare label names), chunk
  # classification targets potentially large domain taxonomies where every
  # label carries its own semantic description, letting the LLM disambiguate
  # similarly named labels without relying on the label string alone.
  class ChunkClassificationDefinition
    include JSON::Serializable
    # Label name returned in `ChunkMetadata::classifications`.
    getter label : String = ""
    # Semantic description of when this label applies. Injected verbatim into
    # the classification prompt next to the label name.
    getter description : String = ""
    def initialize(
      @label : String = "",
      @description : String = ""
    )
    end
  end

  # Configuration for the chunk-classification post-processor.
  #
  # Chunk classification is always multi-label: a chunk may match zero, one, or
  # many of the configured definitions. This is the chunk-level equivalent of
  # `PageClassificationConfig`, but scoped to individual chunks
  # (`ExtractedDocument::chunks`) rather than whole pages, and built for large
  # taxonomies where each label needs its own description rather than a bare name.
  class ChunkClassificationConfig
    include JSON::Serializable
    # Minijinja prompt template. Receives `{{ definitions }}` (rendered label +
    # description list) and `{{ chunks }}` (a numbered list of chunk texts in
    # the current batch) variables. `None` lets the backend pick a sensible
    # default.
    getter prompt_template : String?
    # The set of label definitions the classifier may emit. Must contain at
    # least one entry.
    getter definitions : Array(ChunkClassificationDefinition) = [] of ChunkClassificationDefinition
    # LLM configuration used for classification.
    getter llm : LlmConfig = LlmConfig.from_json("{}")
    # Number of chunks batched into a single LLM request.
    #
    # Larger batches amortize the fixed prompt cost (definitions block) across
    # more chunks, at the risk of exceeding the model's context window for
    # very large taxonomies or chunk texts. Defaults to [`DEFAULT_BATCH_SIZE`].
    getter batch_size : UInt64 = 0
    # Maximum number of in-flight batch requests.
    #
    # Bounds concurrency against the configured LLM provider. Defaults to
    # [`DEFAULT_MAX_CONCURRENCY`].
    getter max_concurrency : UInt64 = 0
    def initialize(
      @prompt_template : String? = nil,
      @definitions : Array(ChunkClassificationDefinition) = [] of ChunkClassificationDefinition,
      @llm : LlmConfig = LlmConfig.from_json("{}"),
      @batch_size : UInt64 = 0,
      @max_concurrency : UInt64 = 0
    )
    end
  end

  # Configuration for the page-classification post-processor.
  class PageClassificationConfig
    include JSON::Serializable
    # Minijinja prompt template. Receives `{{ labels }}` (joined list), `{{ page_text }}`
    # and `{{ multi_label }}` variables. `None` lets the backend pick a sensible default.
    getter prompt_template : String?
    # The set of labels the classifier may emit. Must contain at least one entry.
    getter labels : Array(String) = [] of String
    # Allow multiple labels per page. Single-label mode returns at most one label.
    getter multi_label : Bool = false
    # LLM configuration used for classification.
    getter llm : LlmConfig = LlmConfig.from_json("{}")
    def initialize(
      @prompt_template : String? = nil,
      @labels : Array(String) = [] of String,
      @multi_label : Bool = false,
      @llm : LlmConfig = LlmConfig.from_json("{}")
    )
    end
  end

  # Cross-extractor content filtering configuration.
  #
  # Controls whether "furniture" content (headers, footers, page numbers,
  # watermarks, repeating text) is included in or stripped from extraction
  # results. Applies across all extractors (PDF, DOCX, RTF, ODT, HTML, etc.)
  # with format-specific implementation.
  #
  # When `None` on `ExtractionConfig`, each extractor uses its current
  # default behavior unchanged.
  class ContentFilterConfig
    include JSON::Serializable
    # Include running headers in extraction output.
    #
    # - PDF: Disables top-margin furniture stripping and prevents the layout
    #   model from treating `PageHeader`-classified regions as furniture.
    # - DOCX: Includes document headers in text output.
    # - RTF/ODT: Headers already included; this is a no-op when true.
    # - HTML/EPUB: Keeps `<header>` element content.
    #
    # Default: `false` (headers are stripped or excluded).
    getter include_headers : Bool = false
    # Include running footers in extraction output.
    #
    # - PDF: Disables bottom-margin furniture stripping and prevents the layout
    #   model from treating `PageFooter`-classified regions as furniture.
    # - DOCX: Includes document footers in text output.
    # - RTF/ODT: Footers already included; this is a no-op when true.
    # - HTML/EPUB: Keeps `<footer>` element content.
    #
    # Default: `false` (footers are stripped or excluded).
    getter include_footers : Bool = false
    # Enable the heuristic cross-page repeating text detector.
    #
    # When `true` (default), text that repeats verbatim across a supermajority
    # of pages is classified as furniture and stripped.  Disable this if brand
    # names or repeated headings are being incorrectly removed by the heuristic.
    #
    # Note: when a layout-detection model is active, the model may independently
    # classify page-header / page-footer regions as furniture on a per-page basis.
    # To preserve those regions, set `include_headers = true`, `include_footers = true`,
    # or both, in addition to disabling this flag.
    #
    # Primarily affects PDF extraction.
    #
    # Default: `true`.
    getter strip_repeating_text : Bool = true
    # Include watermark text in extraction output.
    #
    # - PDF: Keeps watermark artifacts and arXiv identifiers.
    # - Other formats: No effect currently.
    #
    # Default: `false` (watermarks are stripped).
    getter include_watermarks : Bool = false
    def initialize(
      @include_headers : Bool = false,
      @include_footers : Bool = false,
      @strip_repeating_text : Bool = true,
      @include_watermarks : Bool = false
    )
    end
  end

  # Configuration for email extraction.
  class EmailConfig
    include JSON::Serializable
    # Windows codepage number to use when an MSG file contains no codepage property.
    # Defaults to `None`, which falls back to windows-1252.
    #
    # If an unrecognized or invalid codepage number is supplied (including 0),
    # the behavior silently falls back to windows-1252 — the same as when the
    # MSG file itself contains an unrecognized codepage. No error or warning is
    # emitted. Users should verify output when supplying unusual values.
    #
    # Common values:
    # - 1250: Central European (Polish, Czech, Hungarian, etc.)
    # - 1251: Cyrillic (Russian, Ukrainian, Bulgarian, etc.)
    # - 1252: Western European (default)
    # - 1253: Greek
    # - 1254: Turkish
    # - 1255: Hebrew
    # - 1256: Arabic
    # - 932:  Japanese (Shift-JIS)
    # - 936:  Simplified Chinese (GBK)
    getter msg_fallback_codepage : UInt32?
    def initialize(
      @msg_fallback_codepage : UInt32? = nil
    )
    end
  end

  # Main extraction configuration.
  #
  # This struct contains all configuration options for the extraction process.
  # It can be loaded from TOML, YAML, or JSON files, or created programmatically.
  class ExtractionConfig
    include JSON::Serializable
    # Enable caching of extraction results
    getter use_cache : Bool = true
    # Enable quality post-processing
    getter enable_quality_processing : Bool = true
    # OCR configuration.
    #
    # `None` does not run OCR for documents that already have usable text. Under
    # `OcrStrategy::Auto`, a PDF with no text layer at all (a scan) is still routed
    # to OCR with default settings so it is not returned empty (#1338). Set
    # [`Self::disable_ocr`] to hard-disable OCR regardless of the detected content.
    getter ocr : OcrConfig?
    # Force OCR even for searchable PDFs
    getter force_ocr : Bool = false
    # Which pages get OCR'd when neither `force_ocr` nor `force_ocr_pages` applies.
    #
    # Defaults to [`OcrStrategy::Auto`], which OCRs only pages whose native text
    # fails a quality check. Only applies to PDF documents. Cannot be
    # [`OcrStrategy::ScannedPages`] while `disable_ocr` is `true`.
    getter ocr_strategy : OcrStrategy = OcrStrategy.from_json("{\"mode\": \"auto\"}")
    # Force OCR on specific pages only (1-indexed page numbers, must be >= 1).
    #
    # When set, only the listed pages are OCR'd regardless of text layer quality.
    # Unlisted pages use native text extraction. Ignored when `force_ocr` is `true`.
    # Only applies to PDF documents. Duplicates are automatically deduplicated.
    # An `ocr` config is recommended for backend/language selection; defaults are used if absent.
    getter force_ocr_pages : Array(UInt32)?
    # Disable OCR entirely, even for images.
    #
    # When `true`, OCR is skipped for all document types. Images return metadata
    # only (dimensions, format, EXIF) without text extraction. PDFs use only
    # native text extraction without OCR fallback.
    #
    # Cannot be `true` simultaneously with `force_ocr`.
    getter disable_ocr : Bool = false
    # Text chunking configuration (None = chunking disabled)
    getter chunking : ChunkingConfig?
    # Content filtering configuration (None = use extractor defaults).
    #
    # Controls whether document "furniture" (headers, footers, watermarks,
    # repeating text) is included in or stripped from extraction results.
    # See [`ContentFilterConfig`] for per-field documentation.
    getter content_filter : ContentFilterConfig?
    # Image extraction configuration (None = no image extraction)
    getter images : ImageExtractionConfig?
    # PDF-specific options (None = use defaults)
    getter pdf_options : PdfConfig?
    # Token reduction configuration (None = no token reduction)
    getter token_reduction : TokenReductionOptions?
    # Language detection configuration (None = no language detection)
    getter language_detection : LanguageDetectionConfig?
    # Page extraction configuration (None = no page tracking)
    getter pages : PageConfig?
    # Keyword extraction configuration (None = no keyword extraction)
    getter keywords : KeywordConfig?
    # Post-processor configuration (None = use defaults)
    getter postprocessor : PostProcessorConfig?
    # HTML to Markdown conversion options (None = use defaults)
    #
    # Configure how HTML documents are converted to Markdown, including heading styles,
    # list formatting, code block styles, and preprocessing options.
    getter html_options : ConversionOptions?
    # Styled HTML output configuration.
    #
    # When set alongside `output_format = OutputFormat::Html`, the extraction
    # pipeline uses [`StyledHtmlRenderer`](crate::rendering::StyledHtmlRenderer)
    # which emits stable `kb-*` CSS class hooks on every structural element
    # and optionally embeds theme CSS or user-supplied CSS in a `<style>` block.
    #
    # When `None`, the existing plain comrak-based HTML renderer is used.
    getter html_output : HtmlOutputConfig?
    # Default per-file timeout in seconds for batch extraction.
    #
    # When set, each file in a batch will be canceled after this duration
    # unless overridden by [`FileExtractionConfig::timeout_secs`].
    #
    # Defaults to `Some(600)` (10 minutes) to prevent pathological files
    # (e.g. deeply nested archives, documents with millions of cells) from
    # running indefinitely and exhausting caller resources, while still
    # giving slow paths (VLM-based OCR, large scanned documents) enough
    # headroom to finish. Set to `None` to disable the timeout for trusted
    # input or long-running workloads.
    getter extraction_timeout_secs : UInt64?
    # Maximum concurrent document extractions in batch operations.
    #
    # This is a ceiling within the configured total thread budget, not an
    # independent pool size. When unset, the scheduler derives document and
    # per-document concurrency from `ConcurrencyConfig::max_threads`.
    getter max_concurrent_extractions : UInt64?
    # Result structure format
    #
    # Controls whether results are returned in unified format (default) with all
    # content in the `content` field, or element-based format with semantic
    # elements (for Unstructured-compatible output).
    getter result_format : ResultFormat = ResultFormat::Unified
    # Security limits for archive extraction.
    #
    # Controls maximum archive size, compression ratio, file count, and other
    # security thresholds to prevent decompression bomb attacks. Also caps
    # nesting depth, iteration count, entity / token length, total
    # content size, and table cell count for every extraction path that
    # ingests user-controlled bytes.
    # When `None`, default limits are used.
    getter security_limits : SecurityLimits?
    # Maximum uncompressed size in bytes for a single embedded file before
    # recursive extraction is attempted (default: 50 MiB).
    #
    # Applies to embedded objects inside OOXML containers (DOCX, PPTX) and
    # to email attachments processed via recursive extraction. Files that
    # exceed this limit are skipped with a `ProcessingWarning` rather than
    # passed to the extraction pipeline, preventing a single oversized
    # embedded object from consuming unbounded memory or time.
    #
    # Set to `None` to disable the per-embedded-file cap (falls back to
    # `security_limits.max_archive_size` as the only guard).
    getter max_embedded_file_bytes : UInt64?
    # Content text format (default: Plain).
    #
    # Controls the format of the extracted content:
    # - `Plain`: Raw extracted text (default)
    # - `Markdown`: Markdown formatted output
    # - `Djot`: Djot markup format (requires djot feature)
    # - `Html`: HTML formatted output
    #
    # When set to a structured format, extraction results will include
    # formatted output. The `formatted_content` field may be populated
    # when format conversion is applied.
    getter output_format : OutputFormat = OutputFormat::Plain.new
    # Escape Markdown special characters in rendered prose (default: `true`).
    #
    # When `output_format` is `Markdown` or `Djot`, the renderer backslash-escapes
    # CommonMark-significant leading characters (e.g. `-`, `#`) so that literal
    # text such as `#06-18` or `- clause` round-trips safely through a CommonMark
    # parser instead of being reinterpreted as a heading or list marker.
    #
    # Table cell text is never escaped, so escaped prose can look inconsistent
    # with table cells containing the same characters. Set this to `false` to
    # disable prose escaping and make `content`, `pages[].content`, and
    # `chunks[].content` read identically to table cell text — useful for LLM
    # prompts or search indexing where CommonMark round-tripping does not matter.
    #
    # Defaults to `true` to preserve existing behavior.
    getter escape_markdown : Bool = true
    # Emit an opt-in anchor marker before each table's rendered Markdown
    # block (default: `false`).
    #
    # When `output_format` is `Markdown` (or `Djot`) and this is `true`, the
    # renderer inserts a `[TABLE:{table_id}]` marker immediately before each
    # table's Markdown in `content`, `pages[].content`, and
    # `chunks[].content`, where `table_id` matches the corresponding
    # entry's `table_id`. This lets a consumer
    # reconcile a rendered Markdown table block with its structured
    # `tables[]` entry.
    #
    # Defaults to `false` so existing output is byte-identical unless
    # explicitly enabled.
    getter table_anchors : Bool = false
    # Controls how Jupyter notebook (`.ipynb`) code cells are rendered.
    #
    # - `Both` (default): code source plus the notebook's saved outputs
    # - `Source`: only the code source (fenced code blocks)
    # - `Outputs`: only the saved outputs
    #
    # Cells are never executed; `Outputs`/`Both` surface only outputs already
    # stored in the notebook.
    getter jupyter_cell_rendering : JupyterCellRendering = JupyterCellRendering::Both
    # Layout detection configuration (None = layout detection disabled).
    #
    # When set, PDF pages and images are analyzed for document structure
    # (headings, code, formulas, tables, figures, etc.) using RT-DETR models
    # via ONNX Runtime. For PDFs, layout hints override paragraph classification
    # in the markdown pipeline. For images, per-region OCR is performed with
    # markdown formatting based on detected layout classes.
    # Requires the `layout-detection` feature to run inference; the field is
    # present whenever the `layout-types` feature is active (which includes
    # `layout-detection` as well as the no-ORT target groups).
    getter layout : LayoutDetectionConfig?
    # Transcription (speech-to-text) configuration for audio/video files.
    #
    # When set and `enabled`, files with audio/video MIME types (mp3, mp4,
    # m4a, wav, webm, etc.) are routed to the Whisper-based transcription
    # pipeline. The actual heavy dependencies are only active under the
    # `transcription` feature; the field is visible under `transcription-types`
    # (including on WASM and Android targets that use the no-ORT preset).
    #
    # Default: `None` (transcription disabled). This is an additive,
    # non-breaking change.
    getter transcription : TranscriptionConfig?
    # Run layout detection on the non-OCR PDF markdown path.
    #
    # When `true` and `layout` is `Some(_)`, layout regions inform reading
    # order, region grouping, and table detection while native font/tag
    # semantics remain authoritative for headings, lists, code, and formulas.
    # OCR layout classification is unchanged. This improves structural output
    # at the cost of inference latency (~150-300ms/page CPU, ~20-50ms/page
    # GPU). Default: `false`. Requires the `layout-detection` feature.
    getter use_layout_for_markdown : Bool = false
    # Enable structured document tree output.
    #
    # When true, populates the `document` field on `ExtractedDocument` with a
    # hierarchical `DocumentStructure` containing heading-driven section nesting,
    # table grids, content layer classification, and inline annotations.
    #
    # Independent of `result_format` — can be combined with Unified or ElementBased.
    getter include_document_structure : Bool = false
    # Hardware acceleration configuration for ONNX Runtime models.
    #
    # Controls execution provider selection for layout detection and embedding
    # models. When `None`, uses platform defaults (CoreML on macOS, CUDA on
    # Linux, CPU on Windows).
    getter acceleration : AccelerationConfig?
    # Cache namespace for tenant isolation.
    #
    # When set, cache entries are stored under `{cache_dir}/{namespace}/`.
    # Must be alphanumeric, hyphens, or underscores only (max 64 chars).
    # Different namespaces have isolated cache spaces on the same filesystem.
    getter cache_namespace : String?
    # Per-request cache TTL in seconds.
    #
    # Overrides the global `max_age_days` for this specific extraction.
    # When `0`, caching is completely skipped (no read or write).
    # When `None`, the global TTL applies.
    getter cache_ttl_secs : UInt64?
    # Email extraction configuration (None = use defaults).
    #
    # Currently supports configuring the fallback codepage for MSG files
    # that do not specify one. See `EmailConfig` for details.
    getter email : EmailConfig?
    # URL ingestion and crawl configuration.
    getter url : UrlExtractionConfig = UrlExtractionConfig.from_json("{}")
    # Maximum recursion depth for archive extraction (default: 3).
    # Set to 0 to disable recursive extraction (legacy behavior).
    getter max_archive_depth : UInt64 = 0
    # Tree-sitter language pack configuration (None = tree-sitter disabled).
    #
    # When set, enables code file extraction using tree-sitter parsers.
    # Controls grammar download behavior and code analysis options.
    getter tree_sitter : TreeSitterConfig?
    # Structured extraction via LLM (None = disabled).
    #
    # When set, the extracted document content is sent to an LLM with the
    # provided JSON schema. The structured response is stored in
    # `ExtractedDocument::structured_output`.
    getter structured_extraction : StructuredExtractionConfig?
    # Named-entity recognition configuration. When set, the NER post-processor runs at
    # the Middle stage and populates `ExtractedDocument::entities`.
    getter ner : NerConfig?
    # Redaction / anonymisation configuration. When set, the redaction post-processor
    # runs at the Late stage and rewrites every textual field in `ExtractedDocument`,
    # emitting an audit trail in `ExtractedDocument::redaction_report`.
    getter redaction : RedactionConfig?
    # Summarisation configuration. When set, the summarisation post-processor runs at
    # the Middle stage and populates `ExtractedDocument::summary`.
    getter summarization : SummarizationConfig?
    # Translation configuration. When set, the translation post-processor runs at the
    # Middle stage and populates `ExtractedDocument::translation`.
    getter translation : TranslationConfig?
    # Per-page classification configuration. When set, the classification post-processor
    # runs at the Middle stage and populates `ExtractedDocument::page_classifications`.
    getter page_classification : PageClassificationConfig?
    # Per-chunk multi-label classification configuration. When set, the
    # chunk-classification post-processor runs at the Middle stage (after
    # chunking) and populates `ChunkMetadata::classifications` on every chunk.
    getter chunk_classification : ChunkClassificationConfig?
    # VLM captioning configuration for extracted images. When set, the captioning
    # post-processor runs at the Middle stage and writes a caption into each
    # `ExtractedImage::caption`.
    getter captioning : CaptioningConfig?
    # Enable QR-code detection in extracted images. When `true`, the QR post-processor
    # runs at the Middle stage and populates `ExtractedImage::qr_codes`.
    getter qr_codes : Bool?
    def initialize(
      @use_cache : Bool = true,
      @enable_quality_processing : Bool = true,
      @ocr : OcrConfig? = nil,
      @force_ocr : Bool = false,
      @ocr_strategy : OcrStrategy = OcrStrategy.from_json("{\"mode\": \"auto\"}"),
      @force_ocr_pages : Array(UInt32)? = nil,
      @disable_ocr : Bool = false,
      @chunking : ChunkingConfig? = nil,
      @content_filter : ContentFilterConfig? = nil,
      @images : ImageExtractionConfig? = nil,
      @pdf_options : PdfConfig? = nil,
      @token_reduction : TokenReductionOptions? = nil,
      @language_detection : LanguageDetectionConfig? = nil,
      @pages : PageConfig? = nil,
      @keywords : KeywordConfig? = nil,
      @postprocessor : PostProcessorConfig? = nil,
      @html_options : ConversionOptions? = nil,
      @html_output : HtmlOutputConfig? = nil,
      @extraction_timeout_secs : UInt64? = nil,
      @max_concurrent_extractions : UInt64? = nil,
      @result_format : ResultFormat = ResultFormat::Unified,
      @security_limits : SecurityLimits? = nil,
      @max_embedded_file_bytes : UInt64? = nil,
      @output_format : OutputFormat = OutputFormat::Plain.new,
      @escape_markdown : Bool = true,
      @table_anchors : Bool = false,
      @jupyter_cell_rendering : JupyterCellRendering = JupyterCellRendering::Both,
      @layout : LayoutDetectionConfig? = nil,
      @transcription : TranscriptionConfig? = nil,
      @use_layout_for_markdown : Bool = false,
      @include_document_structure : Bool = false,
      @acceleration : AccelerationConfig? = nil,
      @cache_namespace : String? = nil,
      @cache_ttl_secs : UInt64? = nil,
      @email : EmailConfig? = nil,
      @url : UrlExtractionConfig = UrlExtractionConfig.from_json("{}"),
      @max_archive_depth : UInt64 = 0,
      @tree_sitter : TreeSitterConfig? = nil,
      @structured_extraction : StructuredExtractionConfig? = nil,
      @ner : NerConfig? = nil,
      @redaction : RedactionConfig? = nil,
      @summarization : SummarizationConfig? = nil,
      @translation : TranslationConfig? = nil,
      @page_classification : PageClassificationConfig? = nil,
      @chunk_classification : ChunkClassificationConfig? = nil,
      @captioning : CaptioningConfig? = nil,
      @qr_codes : Bool? = nil
    )
    end
  end

  # Per-file extraction configuration overrides for batch processing.
  #
  # All fields are `Option<T>` — `None` means "use the batch-level default."
  # This type is used by `config` and `extract_batch`
  # to allow heterogeneous extraction settings within a single batch.
  #
  # # Excluded Fields
  #
  # The following `ExtractionConfig` fields are batch-level only and
  # cannot be overridden per file:
  # - `max_concurrent_extractions` — controls batch parallelism
  # - `use_cache` — global caching policy
  # - `acceleration` — shared ONNX execution provider
  # - `security_limits` — global archive security policy
  class FileExtractionConfig
    include JSON::Serializable
    # Override quality post-processing for this file.
    getter enable_quality_processing : Bool?
    # Override OCR configuration for this file (None in the Option = use batch default).
    getter ocr : OcrConfig?
    # Override force OCR for this file.
    getter force_ocr : Bool?
    # Override the OCR page-selection strategy for this file.
    getter ocr_strategy : OcrStrategy?
    # Override force OCR pages for this file (1-indexed page numbers).
    getter force_ocr_pages : Array(UInt32)?
    # Override disable OCR for this file.
    getter disable_ocr : Bool?
    # Override chunking configuration for this file.
    getter chunking : ChunkingConfig?
    # Override content filtering configuration for this file.
    getter content_filter : ContentFilterConfig?
    # Override image extraction configuration for this file.
    getter images : ImageExtractionConfig?
    # Override PDF options for this file.
    getter pdf_options : PdfConfig?
    # Override token reduction for this file.
    getter token_reduction : TokenReductionOptions?
    # Override language detection for this file.
    getter language_detection : LanguageDetectionConfig?
    # Override page extraction for this file.
    getter pages : PageConfig?
    # Override keyword extraction for this file.
    getter keywords : KeywordConfig?
    # Override post-processor for this file.
    getter postprocessor : PostProcessorConfig?
    # Override styled HTML output configuration for this file.
    getter html_output : HtmlOutputConfig?
    # Override result format for this file.
    getter result_format : ResultFormat?
    # Override output content format for this file.
    getter output_format : OutputFormat?
    # Override document structure output for this file.
    getter include_document_structure : Bool?
    # Override layout detection for this file.
    getter layout : LayoutDetectionConfig?
    # Transcription configuration (see ExtractionConfig for docs).
    getter transcription : TranscriptionConfig?
    # Override per-file extraction timeout in seconds.
    #
    # When set, the extraction for this file will be canceled after the
    # specified duration. A timed-out file produces an error result without
    # affecting other files in the batch.
    getter timeout_secs : UInt64?
    # Override tree-sitter configuration for this file.
    getter tree_sitter : TreeSitterConfig?
    # Override structured extraction configuration for this file.
    #
    # When set, enables LLM-based structured extraction with a JSON schema
    # for this specific file. The extracted content is sent to a VLM/LLM
    # and the response is parsed according to the provided schema.
    getter structured_extraction : StructuredExtractionConfig?
    # Override URL ingestion and crawl configuration for this file.
    getter url : UrlExtractionConfig?
    # Override named-entity recognition configuration for this file.
    getter ner : NerConfig?
    # Override redaction configuration for this file.
    getter redaction : RedactionConfig?
    # Override summarization configuration for this file.
    getter summarization : SummarizationConfig?
    # Override translation configuration for this file.
    getter translation : TranslationConfig?
    # Override per-page classification configuration for this file.
    getter page_classification : PageClassificationConfig?
    # Override per-chunk classification configuration for this file.
    getter chunk_classification : ChunkClassificationConfig?
    # Override VLM captioning configuration for this file.
    getter captioning : CaptioningConfig?
    # Override QR-code detection for this file.
    getter qr_codes : Bool?
    def initialize(
      @enable_quality_processing : Bool? = nil,
      @ocr : OcrConfig? = nil,
      @force_ocr : Bool? = nil,
      @ocr_strategy : OcrStrategy? = nil,
      @force_ocr_pages : Array(UInt32)? = nil,
      @disable_ocr : Bool? = nil,
      @chunking : ChunkingConfig? = nil,
      @content_filter : ContentFilterConfig? = nil,
      @images : ImageExtractionConfig? = nil,
      @pdf_options : PdfConfig? = nil,
      @token_reduction : TokenReductionOptions? = nil,
      @language_detection : LanguageDetectionConfig? = nil,
      @pages : PageConfig? = nil,
      @keywords : KeywordConfig? = nil,
      @postprocessor : PostProcessorConfig? = nil,
      @html_output : HtmlOutputConfig? = nil,
      @result_format : ResultFormat? = nil,
      @output_format : OutputFormat? = nil,
      @include_document_structure : Bool? = nil,
      @layout : LayoutDetectionConfig? = nil,
      @transcription : TranscriptionConfig? = nil,
      @timeout_secs : UInt64? = nil,
      @tree_sitter : TreeSitterConfig? = nil,
      @structured_extraction : StructuredExtractionConfig? = nil,
      @url : UrlExtractionConfig? = nil,
      @ner : NerConfig? = nil,
      @redaction : RedactionConfig? = nil,
      @summarization : SummarizationConfig? = nil,
      @translation : TranslationConfig? = nil,
      @page_classification : PageClassificationConfig? = nil,
      @chunk_classification : ChunkClassificationConfig? = nil,
      @captioning : CaptioningConfig? = nil,
      @qr_codes : Bool? = nil
    )
    end
  end

  # SVG-specific configuration for the image-encode pipeline.
  #
  # Applies when the source image is SVG or when the output format is set to
  # [`ImageOutputFormat::Svg`].  Available when the `svg` feature is active.
  #
  # Used via [`ImageExtractionConfig::svg`].
  class SvgOptions
    include JSON::Serializable
    # Run SVG bytes through `usvg` sanitization (strips external `href` attributes,
    # JavaScript event handlers, and `foreignObject` elements) even when the
    # output format is `Native`.  Defaults to `true`.
    getter sanitize : Bool = true
    # Target DPI when rasterizing SVG to a pixel-based format (PNG, JPEG, WebP,
    # HEIF).  The tree's viewBox is scaled by `render_dpi / 96.0` before the
    # pixel buffer is allocated.  Defaults to `96.0` (1× CSS pixel density).
    getter render_dpi : Float32 = 96.0
    def initialize(
      @sanitize : Bool = true,
      @render_dpi : Float32 = 96.0
    )
    end
  end

  # Unified extraction input for all public extraction entry points.
  class ExtractInput
    include JSON::Serializable
    # Source kind. `bytes` requires `bytes`; `uri` requires `uri`.
    getter kind : ExtractInputKind = ExtractInputKind::Bytes
    # Raw bytes for `kind = "bytes"`.
    getter bytes : Array(UInt8)?
    # Local path, `file://` URI, or HTTP(S) URL for `kind = "uri"`.
    getter uri : String?
    # MIME type hint.
    getter mime_type : String?
    # Filename hint used for MIME detection and metadata.
    getter filename : String?
    # Per-input extraction overrides.
    getter config : FileExtractionConfig?
    def initialize(
      @kind : ExtractInputKind = ExtractInputKind::Bytes,
      @bytes : Bytes? = nil,
      @uri : String? = nil,
      @mime_type : String? = nil,
      @filename : String? = nil,
      @config : FileExtractionConfig? = nil
    )
    end
  end

  # Non-fatal per-input extraction error captured by [`ExtractionResult`].
  class ExtractionErrorItem
    include JSON::Serializable
    # Input index in the original request.
    getter index : UInt64 = 0
    # Stable numeric error code.
    getter code : UInt32 = 0
    # Stable snake_case error kind.
    getter error_type : String = ""
    # Best-effort source identifier.
    getter source : String = ""
    # Error message.
    getter message : String = ""
    def initialize(
      @index : UInt64 = 0,
      @code : UInt32 = 0,
      @error_type : String = "",
      @source : String = "",
      @message : String = ""
    )
    end
  end

  # Summary for a unified extraction call.
  class ExtractionSummary
    include JSON::Serializable
    # Number of inputs submitted by the caller.
    getter inputs : UInt64 = 0
    # Number of extraction results produced.
    getter results : UInt64 = 0
    # Number of per-input errors.
    getter errors : UInt64 = 0
    # Number of URI inputs that resolved to remote HTTP(S) URLs.
    getter remote_urls : UInt64 = 0
    # Number of HTML pages crawled or scraped.
    getter pages_crawled : UInt64 = 0
    # Number of downloaded non-HTML documents extracted from URLs.
    getter documents_downloaded : UInt64 = 0
    def initialize(
      @inputs : UInt64 = 0,
      @results : UInt64 = 0,
      @errors : UInt64 = 0,
      @remote_urls : UInt64 = 0,
      @pages_crawled : UInt64 = 0,
      @documents_downloaded : UInt64 = 0
    )
    end
  end

  # Unified extraction result envelope.
  class ExtractionResult
    include JSON::Serializable
    # Extracted documents in discovery order.
    getter results : Array(ExtractedDocument) = [] of ExtractedDocument
    # Non-fatal per-input errors.
    getter errors : Array(ExtractionErrorItem) = [] of ExtractionErrorItem
    # Aggregate counts for the operation.
    getter summary : ExtractionSummary = ExtractionSummary.from_json("{}")
    # Final URLs reached after redirects during URL ingestion.
    getter crawl_final_urls : Array(String) = [] of String
    # Total redirects followed while fetching or crawling URLs.
    getter crawl_redirect_count : UInt64 = 0
    # Unique normalized URLs discovered by crawls.
    getter crawl_unique_normalized_urls : Array(String) = [] of String
    def initialize(
      @results : Array(ExtractedDocument) = [] of ExtractedDocument,
      @errors : Array(ExtractionErrorItem) = [] of ExtractionErrorItem,
      @summary : ExtractionSummary = ExtractionSummary.from_json("{}"),
      @crawl_final_urls : Array(String) = [] of String,
      @crawl_redirect_count : UInt64 = 0,
      @crawl_unique_normalized_urls : Array(String) = [] of String
    )
    end
  end

  # URL ingestion and crawl configuration.
  class UrlExtractionConfig
    include JSON::Serializable
    # URL extraction mode.
    getter mode : UrlExtractionMode = UrlExtractionMode::Auto
    # Crawlberg crawl configuration used for HTTP(S) URL extraction.
    getter crawl : CrawlConfig = CrawlConfig.from_json("{}")
    # Optional regex filter for document-discovered URLs.
    getter document_url_pattern : String?
    # Maximum URLs to follow per extraction result.
    getter max_document_urls_per_result : UInt32?
    # Maximum URLs followed across the whole extraction call.
    getter max_total_urls : UInt32?
    # Allow bare local filesystem path inputs.
    getter allow_local_file_inputs : Bool = true
    # Allow local `file://` URI inputs.
    getter allow_file_uris : Bool = true
    def initialize(
      @mode : UrlExtractionMode = UrlExtractionMode::Auto,
      @crawl : CrawlConfig = CrawlConfig.from_json("{}"),
      @document_url_pattern : String? = nil,
      @max_document_urls_per_result : UInt32? = nil,
      @max_total_urls : UInt32? = nil,
      @allow_local_file_inputs : Bool = true,
      @allow_file_uris : Bool = true
    )
    end
  end

  # Image extraction configuration.
  class ImageExtractionConfig
    include JSON::Serializable
    # Extract images from documents
    getter extract_images : Bool = true
    # Target DPI for image normalization
    getter target_dpi : Int32 = 300
    # Maximum dimension for images (width or height)
    getter max_image_dimension : Int32 = 4096
    # Whether to inject image reference placeholders into markdown output.
    # When `true` (default), image references like `![Image 1](embedded:p1_i0)`
    # are appended to the markdown. Set to `false` to extract images as data
    # without polluting the markdown output.
    getter inject_placeholders : Bool = true
    # Automatically adjust DPI based on image content
    getter auto_adjust_dpi : Bool = true
    # Minimum DPI threshold
    getter min_dpi : Int32 = 72
    # Maximum DPI threshold
    getter max_dpi : Int32 = 600
    # Maximum number of image objects to extract per PDF page.
    #
    # Some PDFs (e.g. technical diagrams stored as thousands of raster fragments)
    # can trigger extremely long or indefinite extraction times when every image
    # object on a dense page is decoded individually via the PDF extractor. Setting this
    # limit causes xberg to stop collecting individual images once the count
    # per page reaches the cap and emit a warning instead.
    #
    # `None` (default) means no limit — all images are extracted.
    getter max_images_per_page : UInt32?
    # When `true`, extracted images are classified by kind and grouped
    # into clusters where they appear to belong to one figure.
    # Defaults to `false` — opt in explicitly to avoid unexpected ML overhead.
    getter classify : Bool = false
    # When `true`, full-page renders produced during OCR preprocessing are captured
    # and returned as `ImageKind::PageRaster` entries in `ExtractedDocument.images`.
    #
    # **PDF + OCR only.** No rasters are captured for non-PDF inputs or when the
    # document-level OCR bypass is active (whole-document backend). When OCR is
    # enabled and this flag is set but the active backend skips per-page rendering,
    # a `ProcessingWarning` is emitted in `ExtractedDocument.processing_warnings`.
    #
    # Defaults to `false`. Enable when downstream consumers need page thumbnails
    # (e.g. citation previews, visual grounding).
    getter include_page_rasters : Bool = false
    # Run OCR on extracted images and include the recognized text in the document content.
    #
    # When `true` (default) and `ExtractionConfig.ocr` is configured, extracted images
    # are processed with the configured OCR backend. Set to `false` to extract images
    # without OCR processing, even when OCR is enabled.
    getter run_ocr_on_images : Bool = true
    # When `true`, image OCR results are rendered as plain text without the
    # `![...](...)` markdown placeholder. Only takes effect when `run_ocr_on_images`
    # is also `true`.
    getter ocr_text_only : Bool = false
    # When `true` and `ocr_text_only` is `false`, append the OCR text after
    # the image placeholder in the rendered output.
    getter append_ocr_text : Bool = false
    # Target format for re-encoding extracted images.
    #
    # When set to anything other than `Native`, each extracted image is
    # re-encoded to the requested format before being returned. This lets
    # callers receive uniform output without duplicating encode logic
    # downstream.
    #
    # Defaults to `Native` — no re-encode pass is performed and
    # `ExtractedImage.format` reflects the source extractor's output.
    getter output_format : ImageOutputFormat = ImageOutputFormat.from_json("{\"type\": \"native\"}")
    # SVG-specific knobs for the image-encode pipeline.
    #
    # Controls sanitization and rasterization DPI when the source or output
    # format is SVG.  Only available when the `svg` feature is active.
    getter svg : SvgOptions = SvgOptions.from_json("{}")
    # When `true`, populate `ExtractedImage::data_base64` with a Base64-encoded
    # copy of the raw image bytes.
    #
    # Useful for JSON-only clients that cannot efficiently parse the default
    # integer-array serialization of `data`. Defaults to `false`; enabling it
    # doubles the in-memory image representation for the duration of the response.
    getter include_data_base64 : Bool = false
    def initialize(
      @extract_images : Bool = true,
      @target_dpi : Int32 = 300,
      @max_image_dimension : Int32 = 4096,
      @inject_placeholders : Bool = true,
      @auto_adjust_dpi : Bool = true,
      @min_dpi : Int32 = 72,
      @max_dpi : Int32 = 600,
      @max_images_per_page : UInt32? = nil,
      @classify : Bool = false,
      @include_page_rasters : Bool = false,
      @run_ocr_on_images : Bool = true,
      @ocr_text_only : Bool = false,
      @append_ocr_text : Bool = false,
      @output_format : ImageOutputFormat = ImageOutputFormat.from_json("{\"type\": \"native\"}"),
      @svg : SvgOptions = SvgOptions.from_json("{}"),
      @include_data_base64 : Bool = false
    )
    end
  end

  # Token reduction configuration.
  class TokenReductionOptions
    include JSON::Serializable
    # Reduction mode: "off", "light", "moderate", "aggressive", "maximum"
    getter mode : String = ""
    # Preserve important words (capitalized, technical terms)
    getter preserve_important_words : Bool = true
    def initialize(
      @mode : String = "",
      @preserve_important_words : Bool = true
    )
    end
  end

  # Language detection configuration.
  class LanguageDetectionConfig
    include JSON::Serializable
    # Enable language detection
    getter enabled : Bool = true
    # Minimum confidence threshold (0.0-1.0)
    getter min_confidence : Float64 = 0.8
    # Detect multiple languages in the document
    getter detect_multiple : Bool = false
    def initialize(
      @enabled : Bool = true,
      @min_confidence : Float64 = 0.8,
      @detect_multiple : Bool = false
    )
    end
  end

  # Configuration for styled HTML output.
  #
  # When set on `html_output` alongside
  # `output_format = OutputFormat::Html`, the pipeline builds a
  # [`StyledHtmlRenderer`](crate::rendering::StyledHtmlRenderer) instead of
  # the plain comrak-based renderer.
  class HtmlOutputConfig
    include JSON::Serializable
    # Inline CSS string injected into the output after the theme stylesheet.
    # Concatenated after `css_file` content when both are set.
    getter css : String?
    # Path to a CSS file loaded once at renderer construction time.
    # Concatenated before `css` when both are set.
    getter css_file : String?
    # Built-in colour/typography theme. Default: [`HtmlTheme::Unstyled`].
    getter theme : HtmlTheme = HtmlTheme::Unstyled
    # CSS class prefix applied to every emitted class name.
    #
    # Default: `"kb-"`. Change this if your host application already uses
    # classes that start with `kb-`.
    getter class_prefix : String = ""
    # When `true` (default), write the resolved CSS into a `<style>` block
    # immediately after the opening `<div class="{prefix}doc">`.
    #
    # Set to `false` to emit only the structural markup and wire up your
    # own stylesheet targeting the `kb-*` class names.
    getter embed_css : Bool = true
    def initialize(
      @css : String? = nil,
      @css_file : String? = nil,
      @theme : HtmlTheme = HtmlTheme::Unstyled,
      @class_prefix : String = "",
      @embed_css : Bool = true
    )
    end
  end

  # Configuration for the late-interaction (ColBERT) pipeline.
  #
  # Controls which model to use, batching, and download/cache behavior for the
  # local ONNX ColBERT model.
  #
  # Since v5.0.0.
  class LateInteractionConfig
    include JSON::Serializable
    # The late-interaction model to use (defaults to the "gte-moderncolbert" preset).
    getter model : LateInteractionModelType = LateInteractionModelType.from_json("{\"type\": \"preset\"}")
    # Batch size for local ONNX inference.
    #
    # ColBERT emits a `[seq, dim]` multi-vector embedding per document, so
    # memory scales with batch size — keep this modest.
    getter batch_size : UInt64 = 0
    # Maximum token sequence length for the tokenizer (documents).
    getter max_length : UInt64 = 0
    # Fixed padded length for query augmentation.
    #
    # ColBERT queries are padded (with the mask token, kept attention-live)
    # to exactly this many tokens rather than truncated/left as-is — this is
    # the "query augmentation" trick from the ColBERT paper.
    getter query_max_length : UInt64 = 0
    # Show model download progress (local ONNX path only).
    #
    # When enabled, transfer progress for the model, tokenizer and config files is reported at
    # `info` level on the `xberg::model_download` target while they download (#279). A warm
    # Hugging Face cache transfers nothing and so reports nothing. Ignored by
    # [`LateInteractionModelType::Plugin`], which downloads no model.
    getter show_download_progress : Bool = false
    # Optional alternate Hugging Face cache root for model files.
    #
    # When unset, hf-hub follows the standard Hugging Face environment and
    # platform cache conventions.
    getter cache_dir : String?
    # Hardware acceleration for the late-interaction ONNX model.
    getter acceleration : AccelerationConfig?
    # Maximum wall-clock duration (in seconds) for a single embed call when
    # using [`LateInteractionModelType::Plugin`]. `None` disables the timeout.
    getter max_embed_duration_secs : UInt64?
    def initialize(
      @model : LateInteractionModelType = LateInteractionModelType.from_json("{\"type\": \"preset\"}"),
      @batch_size : UInt64 = 0,
      @max_length : UInt64 = 0,
      @query_max_length : UInt64 = 0,
      @show_download_progress : Bool = false,
      @cache_dir : String? = nil,
      @acceleration : AccelerationConfig? = nil,
      @max_embed_duration_secs : UInt64? = nil
    )
    end
  end

  # Layout detection configuration.
  #
  # Controls layout detection behavior in the extraction pipeline.
  # When set on [`ExtractionConfig`](super::ExtractionConfig), layout detection
  # is enabled for PDF extraction.
  class LayoutDetectionConfig
    include JSON::Serializable
    # Which pages the layout model runs on.
    #
    # Defaults to [`LayoutStrategy::Always`], the historical behavior:
    # every page is rendered and inferred. [`LayoutStrategy::Auto`]
    # pre-screens pages with cheap signals and skips the model where it
    # cannot help.
    getter strategy : LayoutStrategy = LayoutStrategy::Always
    # Confidence threshold override (None = use model default).
    getter confidence_threshold : Float32?
    # Whether to apply postprocessing heuristics (default: true).
    getter apply_heuristics : Bool = true
    # Table structure recognition model.
    #
    # Controls which model is used for table cell detection within layout-detected
    # table regions. Defaults to [`TableModel::Tatr`].
    getter table_model : TableModel = TableModel::Tatr
    # How to resolve overlapping native vs layout tables.
    #
    # When a native oxide table and a layout (TATR/SLANeXT) table overlap on the
    # same region, this controls which one is kept. Defaults to
    # [`TableOverlapPreference::Content`] (historical behavior: keep the table with
    # more content). Set to [`TableOverlapPreference::Native`] to favor source
    # reading order (higher text F1) over the model's cell reflow.
    getter table_overlap_preference : TableOverlapPreference = TableOverlapPreference::Content
    # Hardware acceleration for ONNX models (layout detection + table structure).
    #
    # When set, controls which execution provider (CPU, CUDA, CoreML, TensorRT)
    # is used for inference. Defaults to `None` (auto-select per platform).
    getter acceleration : AccelerationConfig?
    # Route regions classified as charts to the chart-understanding OCR task.
    #
    # When `true`, layout regions detected as charts are sent to the VLM
    # chart task (data-series/axis recovery) instead of being treated as
    # generic image regions. Defaults to `false` — chart understanding is
    # opt-in and has no effect on standard text/table extraction scores.
    getter enable_chart_understanding : Bool = false
    def initialize(
      @strategy : LayoutStrategy = LayoutStrategy::Always,
      @confidence_threshold : Float32? = nil,
      @apply_heuristics : Bool = true,
      @table_model : TableModel = TableModel::Tatr,
      @table_overlap_preference : TableOverlapPreference = TableOverlapPreference::Content,
      @acceleration : AccelerationConfig? = nil,
      @enable_chart_understanding : Bool = false
    )
    end
  end

  # Configuration for an LLM provider/model via liter-llm.
  #
  # Each feature (VLM OCR, VLM embeddings, structured extraction) carries
  # its own `LlmConfig`, allowing different providers per feature.
  # Example:
  #   ```crystal
  #   [structured_extraction.llm]
  #   model = "openai/gpt-4o"
  #   api_key = "sk-..."  # or use XBERG_LLM_API_KEY env var
  #   ```
  class LlmConfig
    include JSON::Serializable
    # Provider/model string using liter-llm routing format.
    #
    # Examples: `"openai/gpt-4o"`, `"anthropic/claude-sonnet-4-20250514"`,
    # `"groq/llama-3.1-70b-versatile"`.
    getter model : String = ""
    # API key for the provider. When `None`, liter-llm falls back to
    # the provider's standard environment variable (e.g., `OPENAI_API_KEY`).
    getter api_key : String?
    # Custom base URL override for the provider endpoint.
    getter base_url : String?
    # Request timeout in seconds. When `None`, liter-llm's built-in 60s default
    # applies, except the VLM OCR path which uses a 300s default (a single page
    # image transcription routinely exceeds 60s). Set explicitly to override.
    getter timeout_secs : UInt64?
    # Maximum retry attempts (default: 3).
    getter max_retries : UInt32?
    # Sampling temperature for generation tasks.
    getter temperature : Float64?
    # Maximum tokens to generate.
    getter max_tokens : UInt64?
    # Whether liter-llm should load provider credentials from environment variables.
    #
    # Mirrors liter-llm's `ClientConfigBuilder::load_env`. When `None`, liter-llm's
    # own default behavior applies.
    getter load_env : Bool?
    # Extra HTTP headers sent with every request to the provider.
    #
    # Mirrors liter-llm's `ClientConfigBuilder::header`, for gateways or providers
    # that require custom auth/routing headers.
    getter headers : Hash(String, String)?
    def initialize(
      @model : String = "",
      @api_key : String? = nil,
      @base_url : String? = nil,
      @timeout_secs : UInt64? = nil,
      @max_retries : UInt32? = nil,
      @temperature : Float64? = nil,
      @max_tokens : UInt64? = nil,
      @load_env : Bool? = nil,
      @headers : Hash(String, String)? = nil
    )
    end
  end

  # Configuration for LLM-based structured data extraction.
  #
  # Sends extracted document content to a VLM with a JSON schema,
  # returning structured data that conforms to the schema.
  # Example:
  #   ```crystal
  #   [structured_extraction]
  #   schema_name = "invoice_data"
  #   strict = true
  #
  #   [structured_extraction.schema]
  #   type = "object"
  #   properties.vendor = { type = "string" }
  #   properties.total = { type = "number" }
  #   required = ["vendor", "total"]
  #
  #   [structured_extraction.llm]
  #   model = "openai/gpt-4o"
  #   ```
  class StructuredExtractionConfig
    include JSON::Serializable
    # JSON Schema defining the desired output structure.
    getter schema : JSON::Any = JSON::Any.new(nil)
    # Schema name passed to the LLM's structured output mode.
    getter schema_name : String = ""
    # Optional schema description for the LLM.
    getter schema_description : String?
    # Enable strict mode — output must exactly match the schema.
    getter strict : Bool = false
    # Custom Jinja2 extraction prompt template. When `None`, a default template is used.
    #
    # Available template variables:
    # - `{{ content }}` — The extracted document text.
    # - `{{ schema }}` — The JSON schema as a formatted string.
    # - `{{ schema_name }}` — The schema name.
    # - `{{ schema_description }}` — The schema description (may be empty).
    getter prompt : String?
    # LLM configuration for the extraction.
    getter llm : LlmConfig = LlmConfig.from_json("{}")
    def initialize(
      @schema : JSON::Any = JSON::Any.new(nil),
      @schema_name : String = "",
      @schema_description : String? = nil,
      @strict : Bool = false,
      @prompt : String? = nil,
      @llm : LlmConfig = LlmConfig.from_json("{}")
    )
    end
  end

  # Configuration for the NER post-processor.
  class NerConfig
    include JSON::Serializable
    # Backend that runs the entity detection.
    getter backend : NerBackendKind = NerBackendKind::Onnx
    # Entity categories to detect. Defaults to a sensible PERSON/ORG/LOCATION/EMAIL set
    # when empty.
    getter categories : Array(EntityCategory) = [] of EntityCategory
    # Override the default model — only used by [`NerBackendKind::Onnx`].
    # `None` lets the backend pick its pinned default xberg GLiNER model alias.
    getter model : String?
    # Optional LLM configuration — only used by [`NerBackendKind::Llm`]. Token usage
    # for LLM backends is recorded in `ExtractedDocument::llm_usage`.
    getter llm : LlmConfig?
    # Arbitrary user-supplied entity labels for zero-shot detection.
    #
    # `xberg-gliner` natively supports zero-shot inference over caller-supplied
    # labels. The LLM backend also honours these
    # labels by including them in the structured-output schema. Custom labels
    # surface as [`EntityCategory::Custom`] in the resulting `Entity` stream.
    #
    # Use this when you need domain-specific entity types (e.g. `"Treatment"`,
    # `"Product"`, `"Vessel"`) without forking GLiNER's taxonomy.
    getter custom_labels : Array(String) = [] of String
    def initialize(
      @backend : NerBackendKind = NerBackendKind::Onnx,
      @categories : Array(EntityCategory) = [] of EntityCategory,
      @model : String? = nil,
      @llm : LlmConfig? = nil,
      @custom_labels : Array(String) = [] of String
    )
    end
  end

  # Quality thresholds for OCR fallback decisions and pipeline quality gating.
  #
  # All fields default to the values that match the previous hardcoded behavior,
  # so `OcrQualityThresholds::default()` preserves existing semantics exactly.
  class OcrQualityThresholds
    include JSON::Serializable
    # Minimum total non-whitespace characters to consider text substantive.
    getter min_total_non_whitespace : UInt64 = 64
    # Minimum non-whitespace characters per page on average.
    getter min_non_whitespace_per_page : Float64 = 32.0
    # Minimum character count for a word to be "meaningful".
    getter min_meaningful_word_len : UInt64 = 4
    # Minimum count of meaningful words before text is accepted.
    getter min_meaningful_words : UInt64 = 3
    # Minimum alphanumeric ratio (non-whitespace chars that are alphanumeric).
    getter min_alnum_ratio : Float64 = 0.3
    # Minimum Unicode replacement characters (U+FFFD) to trigger OCR fallback.
    getter min_garbage_chars : UInt64 = 5
    # Maximum fraction of short (1-2 char) words before text is considered fragmented.
    getter max_fragmented_word_ratio : Float64 = 0.6
    # Critical fragmentation threshold — triggers OCR regardless of meaningful words.
    # Normal English text has ~20-30% short words. 80%+ is definitive garbage.
    getter critical_fragmented_word_ratio : Float64 = 0.8
    # Minimum average word length. Below this with enough words indicates garbled extraction.
    getter min_avg_word_length : Float64 = 2.0
    # Minimum word count before average word length check applies.
    getter min_words_for_avg_length_check : UInt64 = 50
    # Minimum consecutive word repetition ratio to detect column scrambling.
    getter min_consecutive_repeat_ratio : Float64 = 0.08
    # Minimum word count before consecutive repetition check is applied.
    getter min_words_for_repeat_check : UInt64 = 50
    # Minimum character count for "substantive markdown" OCR skip gate.
    getter substantive_min_chars : UInt64 = 100
    # Minimum character count for "non-text content" OCR skip gate.
    getter non_text_min_chars : UInt64 = 20
    # Alphanumeric+whitespace ratio threshold for skip decisions.
    getter alnum_ws_ratio_threshold : Float64 = 0.4
    # Minimum quality score (0.0-1.0) for a pipeline stage result to be accepted.
    # If the result from a backend scores below this, try the next backend.
    getter pipeline_min_quality : Float64 = 0.5
    # Minimum fraction of non-whitespace characters that are undecodable
    # (Unicode Private Use Area, replacement characters, or non-whitespace
    # control characters) before a page's text layer is treated as
    # unreadable and routed to OCR (issue #1254). Gated by
    # `min_total_non_whitespace` so short snippets with a stray symbol or
    # two do not trip this check.
    getter min_undecodable_ratio : Float64 = 0.0
    # Whether to route a page to OCR when pdf_oxide reports that a high
    # fraction of its text was fabricated rather than read from the file
    # (`MappingProvenance::Fallback`, pdf_oxide 0.3.75+, issue #1254). This is
    # a direct fact from the extractor's ISO 32000-1 §9.10.2 mapping cascade,
    # distinct from the character-heuristic proxy behind `min_undecodable_ratio`.
    # Defaults to `true`.
    getter enable_provenance_ocr_routing : Bool = false
    # Minimum fraction of a page's non-whitespace characters with
    # `MappingProvenance::Fallback` provenance before the page is treated as
    # having a fabricated text layer and routed to OCR (issue #1254). Gated by
    # `min_total_non_whitespace` so a short page with a stray fallback
    # character cannot trip it. Only used when `enable_provenance_ocr_routing`
    # is `true`.
    getter min_provenance_fallback_ratio : Float64 = 0.0
    def initialize(
      @min_total_non_whitespace : UInt64 = 64,
      @min_non_whitespace_per_page : Float64 = 32.0,
      @min_meaningful_word_len : UInt64 = 4,
      @min_meaningful_words : UInt64 = 3,
      @min_alnum_ratio : Float64 = 0.3,
      @min_garbage_chars : UInt64 = 5,
      @max_fragmented_word_ratio : Float64 = 0.6,
      @critical_fragmented_word_ratio : Float64 = 0.8,
      @min_avg_word_length : Float64 = 2.0,
      @min_words_for_avg_length_check : UInt64 = 50,
      @min_consecutive_repeat_ratio : Float64 = 0.08,
      @min_words_for_repeat_check : UInt64 = 50,
      @substantive_min_chars : UInt64 = 100,
      @non_text_min_chars : UInt64 = 20,
      @alnum_ws_ratio_threshold : Float64 = 0.4,
      @pipeline_min_quality : Float64 = 0.5,
      @min_undecodable_ratio : Float64 = 0.0,
      @enable_provenance_ocr_routing : Bool = false,
      @min_provenance_fallback_ratio : Float64 = 0.0
    )
    end
  end

  # A single backend stage in the OCR pipeline.
  class OcrPipelineStage
    include JSON::Serializable
    # Backend name: "tesseract", "paddleocr", "paddle-ocr", "sceptre", "vlm", or a custom registered name.
    # Sceptre uses ONNX Runtime on desktop/server and tract on Android/iOS; browser WebAssembly has a separate
    # byte-fed engine because the normal async OCR registry assumes native model storage.
    getter backend : String = ""
    # Priority weight (higher = tried first). Stages are sorted by priority descending.
    getter priority : UInt32 = 0
    # Language override for this stage (None = use parent OcrConfig.language).
    # Accepts either a single language code ("eng") or a list (["eng", "deu"]).
    getter language : Array(String)?
    # Tesseract-specific config override for this stage.
    getter tesseract_config : TesseractConfig?
    # PaddleOCR-specific config for this stage.
    getter paddle_ocr_config : JSON::Any?
    # VLM config override for this pipeline stage.
    getter vlm_config : LlmConfig?
    # Arbitrary per-call options passed through to the backend unchanged.
    #
    # Backends that support runtime tuning (mode switching, preprocessing
    # flags, inference parameters, etc.) read this value and deserialize
    # the keys they care about. Keys unknown to the backend are silently
    # ignored, so options from different backends can coexist in the same
    # config without conflict.
    #
    # Example (custom backend):
    # ```json
    # { "mode": "fast", "enable_layout": true }
    # ```
    getter backend_options : JSON::Any?
    def initialize(
      @backend : String = "",
      @priority : UInt32 = 0,
      @language : Array(String)? = nil,
      @tesseract_config : TesseractConfig? = nil,
      @paddle_ocr_config : JSON::Any? = nil,
      @vlm_config : LlmConfig? = nil,
      @backend_options : JSON::Any? = nil
    )
    end
  end

  # Multi-backend OCR pipeline with quality-based fallback.
  #
  # Backends are tried in priority order (highest first). After each backend
  # produces output, quality is evaluated. If it meets `quality_thresholds.pipeline_min_quality`,
  # the result is accepted. Otherwise the next backend is tried; if none clears the
  # threshold, an internal selection policy derived from the `OcrConfig` decides which
  # stage's result is returned as the best effort (`vlm_fallback` pipelines prefer their
  # last non-empty stage; explicit and classical pipelines stay score-based).
  class OcrPipelineConfig
    include JSON::Serializable
    # Ordered list of backends to try. Sorted by priority (descending) at runtime.
    getter stages : Array(OcrPipelineStage) = [] of OcrPipelineStage
    # Quality thresholds for deciding whether to accept a result or try the next backend.
    getter quality_thresholds : OcrQualityThresholds = OcrQualityThresholds.from_json("{}")
    def initialize(
      @stages : Array(OcrPipelineStage) = [] of OcrPipelineStage,
      @quality_thresholds : OcrQualityThresholds = OcrQualityThresholds.from_json("{}")
    )
    end
  end

  # OCR configuration.
  class OcrConfig
    include JSON::Serializable
    # Whether OCR is enabled.
    #
    # Setting `enabled: false` is a shorthand for `disable_ocr: true` on the parent
    # [`ExtractionConfig`](crate::core::config::ExtractionConfig). Images return
    # metadata only; PDFs use native text extraction without OCR fallback.
    #
    # Defaults to `true`. When `false`, all other OCR settings are ignored.
    getter enabled : Bool = true
    # OCR backend: tesseract, paddleocr, paddle-ocr, sceptre, or vlm.
    # Sceptre uses ONNX Runtime on desktop/server and tract on supported mobile builds.
    # Browser WebAssembly uses the separate byte-fed Sceptre worker API.
    getter backend : String = ""
    # Language code(s) for OCR recognition.
    # Accepts either a single language code ("eng") or a list (["eng", "deu"]).
    # Defaults to ["eng"]. For Tesseract, languages are joined with "+".
    getter language : Array(String) = [] of String
    # Tesseract-specific configuration (optional)
    getter tesseract_config : TesseractConfig?
    # Output format for OCR results (optional, for format conversion)
    getter output_format : OutputFormat?
    # PaddleOCR-specific configuration (optional, JSON passthrough).
    #
    # Deserialized into a [`PaddleOcrConfig`](crate::PaddleOcrConfig), so any of its fields can be
    # overridden here — most notably `model_version` (`"pp-ocrv6"` default / `"pp-ocrv5"`) and
    # `model_tier`. In TOML:
    #
    # ```toml
    # [ocr.paddle_ocr_config]
    # model_version = "pp-ocrv5"
    # model_tier = "server"
    # ```
    #
    # The `XBERG_OCR_MODEL_VERSION` / `XBERG_OCR_MODEL_TIER` environment variables set the same two
    # keys for env-configured servers (issue #1279).
    getter paddle_ocr_config : JSON::Any?
    # Arbitrary per-call options passed through to the backend unchanged.
    #
    # Custom OCR backends and built-in backends that support runtime tuning
    # can read this value and deserialize the keys they care about. Keys
    # unknown to the backend are silently ignored.
    #
    # This is the recommended extension point for per-call parameters that
    # are not covered by the typed fields above (e.g. mode switching,
    # preprocessing flags, inference batch size).
    #
    # **Scope:** when `pipeline` is `None`, this value is propagated to the
    # primary stage of the auto-constructed pipeline. When `pipeline` is
    # explicitly set, this field has **no effect** — the caller must set
    # `OcrPipelineStage.backend_options` directly on the relevant stage(s)
    # instead.
    #
    # Example:
    # ```json
    # { "mode": "fast", "enable_layout": true, "timeout_ms": 5000 }
    # ```
    getter backend_options : JSON::Any?
    # OCR element extraction configuration
    getter element_config : OcrElementConfig?
    # Quality thresholds for the native-text-to-OCR fallback decision.
    # When None, uses compiled defaults (matching previous hardcoded behavior).
    getter quality_thresholds : OcrQualityThresholds?
    # Multi-backend OCR pipeline configuration. When set, enables weighted
    # fallback across multiple OCR backends based on output quality.
    # When None, uses the single `backend` field (same as today).
    getter pipeline : OcrPipelineConfig?
    # Enable automatic page rotation based on orientation detection.
    #
    # When enabled, uses Tesseract's `DetectOrientationScript()` to detect
    # page orientation (0/90/180/270 degrees) before OCR. If the page is
    # rotated with high confidence, the image is corrected before recognition.
    # This is critical for handling rotated scanned documents.
    getter auto_rotate : Bool = false
    # Ergonomic VLM fallback policy.
    #
    # When set to anything other than [`VlmFallbackPolicy::Disabled`] and
    # [`OcrConfig::pipeline`] is `None`, a multi-stage pipeline is synthesised
    # automatically:
    #
    # - [`VlmFallbackPolicy::OnLowQuality`] → `[classical_stage, vlm_stage]` with the
    #   `quality_threshold` mapped onto [`OcrQualityThresholds::pipeline_min_quality`].
    # - [`VlmFallbackPolicy::Always`] → `[vlm_stage]` only.
    #
    # Requires [`OcrConfig::vlm_config`] to be `Some` when not `Disabled`.
    # When [`OcrConfig::pipeline`] is explicitly set, this field is ignored.
    getter vlm_fallback : VlmFallbackPolicy = VlmFallbackPolicy.from_json("{\"mode\": \"disabled\"}")
    # VLM (Vision Language Model) OCR configuration.
    #
    # Required when `backend` is `"vlm"` or when `vlm_fallback` is not
    # [`VlmFallbackPolicy::Disabled`]. Uses liter-llm to send page images to a
    # vision model for text extraction.
    getter vlm_config : LlmConfig?
    # Custom Jinja2 prompt template for VLM OCR.
    #
    # When `None`, uses the default template. Available variables:
    # - `{{ language }}` — The document language code (e.g., "eng", "deu").
    getter vlm_prompt : String?
    # Hardware acceleration for ONNX Runtime models (e.g. PaddleOCR, layout detection).
    #
    # Not user-configurable via config files — injected at runtime from
    # `ExtractionConfig::acceleration` before each `process_image` call.
    getter acceleration : AccelerationConfig?
    # Caller-supplied Tesseract `traineddata` bytes per language code.
    #
    # Primary use case is the WASM build, which has no filesystem and cannot
    # download tessdata at runtime. Native builds typically rely on
    # `TessdataManager` and ignore this field. When present, the WASM
    # Tesseract backend prefers these bytes over its compile-time-bundled
    # English data.
    #
    # Skipped by serde to keep config files small — supply via the typed API
    # at runtime.
    getter tessdata_bytes : Array(UInt8)?
    # Runtime override for tessdata directory path.
    #
    # When set, uses this path as the highest-priority tessdata location,
    # bypassing environment variables and cache directories. Useful for
    # embedding pre-installed tessdata in applications. When `None`, uses
    # the standard resolution chain: TESSDATA_PREFIX env, cache dir, system paths.
    getter tessdata_path : String?
    def initialize(
      @enabled : Bool = true,
      @backend : String = "",
      @language : Array(String) = [] of String,
      @tesseract_config : TesseractConfig? = nil,
      @output_format : OutputFormat? = nil,
      @paddle_ocr_config : JSON::Any? = nil,
      @backend_options : JSON::Any? = nil,
      @element_config : OcrElementConfig? = nil,
      @quality_thresholds : OcrQualityThresholds? = nil,
      @pipeline : OcrPipelineConfig? = nil,
      @auto_rotate : Bool = false,
      @vlm_fallback : VlmFallbackPolicy = VlmFallbackPolicy.from_json("{\"mode\": \"disabled\"}"),
      @vlm_config : LlmConfig? = nil,
      @vlm_prompt : String? = nil,
      @acceleration : AccelerationConfig? = nil,
      @tessdata_bytes : Hash(String, Bytes)? = nil,
      @tessdata_path : String? = nil
    )
    end
  end

  # Page extraction and tracking configuration.
  #
  # Controls how pages are extracted, tracked, and represented in the extraction results.
  # When `None`, page tracking is disabled.
  #
  # Page range tracking in chunk metadata (first_page/last_page) is automatically enabled
  # when page boundaries are available and chunking is configured.
  class PageConfig
    include JSON::Serializable
    # Extract pages as separate array (ExtractedDocument.pages)
    getter extract_pages : Bool = false
    # Insert page markers in main content string
    getter insert_page_markers : Bool = false
    # Page marker format (use {page_num} placeholder)
    # Default: "\n\n<!-- PAGE {page_num} -->\n\n"
    getter marker_format : String = "\n\n<!-- PAGE {page_num} -->\n\n"
    def initialize(
      @extract_pages : Bool = false,
      @insert_page_markers : Bool = false,
      @marker_format : String = "\n\n<!-- PAGE {page_num} -->\n\n"
    )
    end
  end

  # PDF-specific configuration.
  class PdfConfig
    include JSON::Serializable
    # Extract images from PDF
    getter extract_images : Bool = false
    # Extract tables from PDF.
    #
    # When `true` (default), runs pdf_oxide's native grid detector and, if it
    # finds nothing, falls back to the heuristic text-layer reconstruction in
    # `pdf::oxide::table::extract_tables_heuristic`. Set to `false` to skip
    # both passes — `tables` will then be empty in the result.
    getter extract_tables : Bool = true
    # List of passwords to try when opening encrypted PDFs
    getter passwords : Array(String)?
    # Extract PDF metadata
    getter extract_metadata : Bool = true
    # Hierarchy extraction configuration (None = hierarchy extraction disabled)
    getter hierarchy : HierarchyConfig?
    # Extract PDF annotations (text notes, highlights, links, stamps).
    # Default: false
    getter extract_annotations : Bool = false
    # Top margin fraction (0.0–1.0) of page height to exclude headers/running heads.
    # Default: 0.06 (6%)
    getter top_margin_fraction : Float32?
    # Bottom margin fraction (0.0–1.0) of page height to exclude footers/page numbers.
    # Default: 0.05 (5%)
    getter bottom_margin_fraction : Float32?
    # Allow single-column pseudo tables in extraction results.
    #
    # By default, tables with fewer than 2 columns (layout-guided) or 3 columns
    # (heuristic) are rejected. When `true`, the minimum column count is relaxed
    # to 1, allowing single-column structured data (glossaries, itemized lists)
    # to be emitted as tables. Other quality filters (density, sparsity, prose
    # detection) still apply.
    getter allow_single_column_tables : Bool = false
    # Perform OCR on inline images extracted from PDF pages and attach the
    # recognized text to each `ExtractedImage.ocr_result`. Requires Tesseract
    # to be available; if `ExtractionConfig.ocr` is `None` the extractor
    # falls back to `TesseractConfig::default()`. Per-image failures degrade
    # gracefully (the image is returned without OCR text rather than failing
    # the whole extraction). Default: `false`.
    getter ocr_inline_images : Bool = false
    # Extract AcroForm and XFA form fields into `ExtractedDocument.form_fields`.
    #
    # When `true` (default), reads the document's interactive form structure
    # (field names, types, values, widget geometry). Cheap and strictly
    # additive — non-form PDFs simply yield an empty list. Set to `false` to
    # skip the form pass entirely.
    getter extract_form_fields : Bool = true
    # Reorder extracted text by layout-detected reading order.
    #
    # When `true`, projects text spans onto layout-detected regions, performs
    # column detection, and emits spans in natural reading order (important
    # for multi-column academic PDFs). Requires the `layout-detection`
    # feature; has no effect without it. Defaults to `false`.
    getter reading_order : Bool = false
    def initialize(
      @extract_images : Bool = false,
      @extract_tables : Bool = true,
      @passwords : Array(String)? = nil,
      @extract_metadata : Bool = true,
      @hierarchy : HierarchyConfig? = nil,
      @extract_annotations : Bool = false,
      @top_margin_fraction : Float32? = nil,
      @bottom_margin_fraction : Float32? = nil,
      @allow_single_column_tables : Bool = false,
      @ocr_inline_images : Bool = false,
      @extract_form_fields : Bool = true,
      @reading_order : Bool = false
    )
    end
  end

  # Hierarchy extraction configuration for PDF text structure analysis.
  #
  # Enables extraction of document hierarchy levels (H1-H6) based on font size
  # clustering and semantic analysis. When enabled, hierarchical blocks are
  # included in page content.
  class HierarchyConfig
    include JSON::Serializable
    # Enable hierarchy extraction
    getter enabled : Bool = true
    # Number of font size clusters to use for hierarchy levels (1-7)
    #
    # Default: 6, which provides H1-H6 heading levels with body text.
    # Larger values create more fine-grained hierarchy levels.
    getter k_clusters : UInt64 = 3
    # Include bounding box information in hierarchy blocks
    getter include_bbox : Bool = true
    def initialize(
      @enabled : Bool = true,
      @k_clusters : UInt64 = 3,
      @include_bbox : Bool = true
    )
    end
  end

  # Post-processor configuration.
  class PostProcessorConfig
    include JSON::Serializable
    # Enable post-processors
    getter enabled : Bool = true
    # Whitelist of processor names to run (None = all enabled)
    getter enabled_processors : Array(String)?
    # Blacklist of processor names to skip (None = none disabled)
    getter disabled_processors : Array(String)?
    # Pre-computed AHashSet for O(1) enabled processor lookup
    getter enabled_set : Array(String)?
    # Pre-computed AHashSet for O(1) disabled processor lookup
    getter disabled_set : Array(String)?
    def initialize(
      @enabled : Bool = true,
      @enabled_processors : Array(String)? = nil,
      @disabled_processors : Array(String)? = nil,
      @enabled_set : Array(String)? = nil,
      @disabled_set : Array(String)? = nil
    )
    end
  end

  # Chunking configuration.
  #
  # Configures text chunking for document content, including chunk size,
  # overlap, trimming behavior, and optional embeddings.
  #
  # Use `..Default::default()` when constructing to allow for future field additions:
  # ```rust
  # let config = ChunkingConfig {
  #     max_characters: 500,
  #     ..Default::default()
  # };
  # ```
  class ChunkingConfig
    include JSON::Serializable
    # Maximum size per chunk (in units determined by `sizing`).
    #
    # When `sizing` is `Characters` (default), this is the max character count.
    # When using token-based sizing, this is the max token count.
    #
    # Default: 1000
    @[JSON::Field(key: "max_chars")]
    getter max_characters : UInt64 = 1000
    # Overlap between chunks (in units determined by `sizing`).
    #
    # Default: 200
    @[JSON::Field(key: "max_overlap")]
    getter overlap : UInt64 = 200
    # Whether to trim whitespace from chunk boundaries.
    #
    # Default: true
    getter trim : Bool = true
    # Type of chunker to use (Text or Markdown).
    #
    # Default: Text
    getter chunker_type : ChunkerType = ChunkerType::Text
    # Optional embedding configuration for chunk embeddings.
    getter embedding : EmbeddingConfig?
    # Use a preset configuration (overrides individual settings if provided).
    getter preset : String?
    # How to measure chunk size.
    #
    # Default: `Characters` (Unicode character count).
    # Enable `chunking-tiktoken` or `chunking-tokenizers` features for token-based sizing.
    getter sizing : ChunkSizing = ChunkSizing.from_json("{\"type\": \"characters\"}")
    # When `true` and `chunker_type` is `Markdown`, prepend the heading hierarchy
    # path (e.g. `"# Title > ## Section\n\n"`) to each chunk's content string.
    #
    # This is useful for RAG pipelines where each chunk needs self-contained
    # context about its position in the document structure.
    #
    # Default: `false`
    getter prepend_heading_context : Bool = false
    # Optional cosine similarity threshold for semantic topic boundary detection.
    #
    # Only used when `chunker_type` is `Semantic` and an `EmbeddingConfig` is
    # provided. You almost never need to set this. When omitted, defaults to
    # `0.75` which works well for most documents. Lower values detect more
    # topic boundaries (more, smaller chunks); higher values detect fewer.
    # Range: `0.0..=1.0`.
    getter topic_threshold : Float32?
    # How to handle markdown tables that exceed the chunk size limit.
    #
    # Only applies when `chunker_type` is `Markdown`.
    #
    # * `Split` (default) — tables are split at row boundaries; continuation
    #   chunks do not repeat the header.
    # * `RepeatHeader` — the table header row and separator are prepended to
    #   every continuation chunk so each chunk is self-contained.
    #
    # Default: `Split`
    getter table_chunking : TableChunkingMode = TableChunkingMode::Split
    # Where the heading-path breadcrumb is written when `prepend_heading_context`
    # is `true`. See
    # [`BreadcrumbTarget`](crate::core::config::extraction::BreadcrumbTarget) for
    # the dense-vs-lexical retrieval trade-off. Has no effect when
    # `prepend_heading_context` is `false`.
    #
    # Default: `Content` — preserves the pre-existing behaviour of prepending the
    # breadcrumb into chunk `content`.
    getter breadcrumb_target : BreadcrumbTarget = BreadcrumbTarget::Content
    def initialize(
      @max_characters : UInt64 = 1000,
      @overlap : UInt64 = 200,
      @trim : Bool = true,
      @chunker_type : ChunkerType = ChunkerType::Text,
      @embedding : EmbeddingConfig? = nil,
      @preset : String? = nil,
      @sizing : ChunkSizing = ChunkSizing.from_json("{\"type\": \"characters\"}"),
      @prepend_heading_context : Bool = false,
      @topic_threshold : Float32? = nil,
      @table_chunking : TableChunkingMode = TableChunkingMode::Split,
      @breadcrumb_target : BreadcrumbTarget = BreadcrumbTarget::Content
    )
    end
  end

  # Embedding configuration for text chunks.
  #
  # Configures embedding generation using ONNX models via the vendored embedding engine.
  # Requires the `embeddings` feature to be enabled.
  class EmbeddingConfig
    include JSON::Serializable
    # The embedding model to use (defaults to "gte-modernbert-base" preset if not specified)
    getter model : EmbeddingModelType = EmbeddingModelType.from_json("{\"type\": \"preset\"}")
    # Whether to normalize embedding vectors (recommended for cosine similarity)
    getter normalize : Bool = true
    # Batch size for embedding generation
    getter batch_size : UInt64 = 32
    # Show model download progress.
    #
    # When enabled, transfer progress for the model, tokenizer and config files is reported at
    # `info` level on the `xberg::model_download` target while they download (#279). Covers both
    # local backends (ONNX and static/model2vec). A warm Hugging Face cache transfers nothing and
    # so reports nothing. Ignored by [`EmbeddingModelType::Llm`] and
    # [`EmbeddingModelType::Plugin`], which download no model.
    getter show_download_progress : Bool = false
    # Optional alternate Hugging Face cache root for model files.
    #
    # When unset, hf-hub follows `HF_HUB_CACHE`, `HUGGINGFACE_HUB_CACHE`,
    # `HF_HOME`, XDG, and platform defaults. Prefer those environment variables
    # when configuring the cache process-wide.
    getter cache_dir : String?
    # Hardware acceleration for the embedding ONNX model.
    #
    # When set, controls which execution provider (CPU, CUDA, CoreML, TensorRT)
    # is used for inference. Defaults to `None` (auto-select per platform).
    getter acceleration : AccelerationConfig?
    # Maximum wall-clock duration (in seconds) for a single `embed()` call when
    # using [`EmbeddingModelType::Plugin`].
    #
    # Applies only to the in-process plugin path — protects against hung
    # host-language backends (e.g. a Python callback deadlocked on the GIL,
    # a model stuck on CUDA OOM retries, etc.). On timeout, the dispatcher
    # returns `Plugin` instead of blocking forever.
    #
    # `None` disables the timeout. The default (60 seconds) is conservative
    # for common in-process inference; increase for large batches on slow
    # hardware.
    getter max_embed_duration_secs : UInt64?
    # Maximum number of tokens fed to the tokenizer before truncation when
    # embedding a chunk with a local ONNX model (Preset/Custom).
    #
    # A chunk longer than this many tokens has its tail dropped before
    # inference, so only the prefix contributes to the stored vector. `None`
    # falls back to 512 (the historical default). The effective value is
    # always capped at the model's own `model_max_length`, so raising it past
    # what the model supports has no effect — set it to match a long-context
    # model (e.g. 8192 for Jina/Nomic) so long chunks embed in full.
    #
    # Ignored by the `Llm` and `Plugin` model types, which own their own
    # tokenization.
    getter max_sequence_length : UInt64?
    def initialize(
      @model : EmbeddingModelType = EmbeddingModelType.from_json("{\"type\": \"preset\"}"),
      @normalize : Bool = true,
      @batch_size : UInt64 = 32,
      @show_download_progress : Bool = false,
      @cache_dir : String? = nil,
      @acceleration : AccelerationConfig? = nil,
      @max_embed_duration_secs : UInt64? = nil,
      @max_sequence_length : UInt64? = nil
    )
    end
  end

  # Configuration for the redaction post-processor.
  class RedactionConfig
    include JSON::Serializable
    # Categories to redact. Empty means "every category supported by the engine."
    getter categories : Array(PiiCategory) = [] of PiiCategory
    # Strategy applied to every match.
    getter strategy : RedactionStrategy = RedactionStrategy::Mask
    # Optional NER backend — required to redact PERSON / ORGANIZATION / LOCATION
    # categories (the pure-Rust pattern engine only covers regex-detectable PII).
    getter ner : NerConfig?
    # When `true`, chunk byte ranges are kept consistent with the rewritten content by
    # adjusting `byte_start` / `byte_end` after replacement. When `false`, chunk byte
    # ranges still refer to the *original* content offsets — useful when downstream
    # consumers want to map findings back to the original document.
    getter preserve_offsets : Bool = true
    # Arbitrary user-supplied literal terms to redact.
    #
    # Each term is treated as a regex hit against the document, surfacing as
    # `PiiCategory::Custom(label)` in [`RedactionFinding`](crate::types::redaction::RedactionFinding)
    # where `label` is the per-term label (defaulting to the literal value itself).
    # Case-insensitive by default; set [`RedactionTerm::case_sensitive`] for exact match.
    #
    # Use this when you need to redact tenant-specific tokens (employee IDs,
    # project codes, internal product names) without writing a custom plugin.
    getter custom_terms : Array(RedactionTerm) = [] of RedactionTerm
    # Arbitrary user-supplied regex patterns to redact.
    #
    # Same surfacing semantics as [`custom_terms`](Self::custom_terms): each
    # hit becomes a `PiiCategory::Custom(label)` finding. Patterns are validated
    # at config-construction time via [`RedactionConfig::validate`].
    getter custom_patterns : Array(RedactionPattern) = [] of RedactionPattern
    def initialize(
      @categories : Array(PiiCategory) = [] of PiiCategory,
      @strategy : RedactionStrategy = RedactionStrategy::Mask,
      @ner : NerConfig? = nil,
      @preserve_offsets : Bool = true,
      @custom_terms : Array(RedactionTerm) = [] of RedactionTerm,
      @custom_patterns : Array(RedactionPattern) = [] of RedactionPattern
    )
    end
  end

  # One user-supplied literal term to redact.
  #
  # Matched as a regex-escaped substring (so callers do not need to escape
  # metacharacters themselves). Case-insensitive by default — set
  # [`Self::case_sensitive`] to `true` for exact byte-match semantics.
  class RedactionTerm
    include JSON::Serializable
    # Custom category label surfaced in [`RedactionFinding::category`](crate::types::redaction::RedactionFinding::category).
    getter label : String = ""
    # Literal value to match. Regex metacharacters are escaped automatically.
    getter value : String = ""
    # When `true`, match the value as-is; otherwise match ASCII-case-insensitively.
    getter case_sensitive : Bool = false
    def initialize(
      @label : String = "",
      @value : String = "",
      @case_sensitive : Bool = false
    )
    end
  end

  # One user-supplied regex pattern to redact.
  #
  # The pattern is compiled with the Rust `regex` crate (no look-around). Case
  # sensitivity is encoded in the pattern via the `(?i)` inline flag when
  # [`Self::case_sensitive`] is `false`.
  class RedactionPattern
    include JSON::Serializable
    # Custom category label surfaced in [`RedactionFinding::category`](crate::types::redaction::RedactionFinding::category).
    getter label : String = ""
    # Regex pattern (Rust `regex` crate dialect — no look-around).
    getter pattern : String = ""
    # When `true`, match case-sensitively; otherwise prepend `(?i)` to the regex.
    getter case_sensitive : Bool = false
    def initialize(
      @label : String = "",
      @pattern : String = "",
      @case_sensitive : Bool = false
    )
    end
  end

  # Configuration for the reranking pipeline.
  #
  # Controls which model to use, how many results to return, and download/cache
  # behavior for local ONNX models.
  #
  # Since v5.0.0.
  class RerankerConfig
    include JSON::Serializable
    # The reranker model to use (defaults to "balanced" preset if not specified).
    getter model : RerankerModelType = RerankerModelType.from_json("{\"type\": \"preset\"}")
    # Return at most this many documents. `None` returns all.
    #
    # Applied after sorting by score, so the highest-scoring documents are kept.
    getter top_k : UInt64?
    # Batch size for local ONNX cross-encoder inference.
    getter batch_size : UInt64 = 32
    # Show model download progress (local ONNX path only).
    #
    # When enabled, transfer progress for the model, tokenizer and config files is reported at
    # `info` level on the `xberg::model_download` target while they download (#279). A warm
    # Hugging Face cache transfers nothing and so reports nothing. Ignored by
    # [`RerankerModelType::Llm`] and [`RerankerModelType::Plugin`], which download no model.
    getter show_download_progress : Bool = false
    # Optional alternate Hugging Face cache root for model files.
    #
    # When unset, hf-hub follows the standard Hugging Face environment and
    # platform cache conventions.
    getter cache_dir : String?
    # Hardware acceleration for the reranker ONNX model.
    #
    # Controls which execution provider (CPU, CUDA, CoreML, TensorRT) is used for
    # local inference. Defaults to `None` (auto-select per platform).
    getter acceleration : AccelerationConfig?
    # Maximum wall-clock duration (in seconds) for a single `rerank()` call when
    # using [`RerankerModelType::Plugin`].
    #
    # Applies only to the in-process plugin path — protects against hung
    # host-language backends. On timeout, the dispatcher returns
    # `Plugin` instead of blocking forever.
    #
    # `None` disables the timeout. The default (60 seconds) is conservative
    # for common in-process inference; increase for large document sets on slow
    # hardware.
    getter max_rerank_duration_secs : UInt64?
    def initialize(
      @model : RerankerModelType = RerankerModelType.from_json("{\"type\": \"preset\"}"),
      @top_k : UInt64? = nil,
      @batch_size : UInt64 = 32,
      @show_download_progress : Bool = false,
      @cache_dir : String? = nil,
      @acceleration : AccelerationConfig? = nil,
      @max_rerank_duration_secs : UInt64? = nil
    )
    end
  end

  # Configuration for the sparse-embedding pipeline.
  #
  # Controls which model to use, batching, and download/cache behavior for the
  # local ONNX SPLADE model.
  #
  # Since v5.0.0.
  class SparseEmbeddingConfig
    include JSON::Serializable
    # The sparse-embedding model to use (defaults to the "opensearch-v3-distill" preset).
    getter model : SparseEmbeddingModelType = SparseEmbeddingModelType.from_json("{\"type\": \"preset\"}")
    # Batch size for local ONNX inference.
    #
    # SPLADE emits a `[seq, vocab]` logit tensor per document, so memory scales
    # with batch size — keep this modest.
    getter batch_size : UInt64 = 0
    # Maximum token sequence length for the tokenizer.
    getter max_length : UInt64 = 0
    # Show model download progress (local ONNX path only).
    #
    # When enabled, transfer progress for the model, tokenizer and config files is reported at
    # `info` level on the `xberg::model_download` target while they download (#279). A warm
    # Hugging Face cache transfers nothing and so reports nothing. Ignored by
    # [`SparseEmbeddingModelType::Plugin`], which downloads no model.
    getter show_download_progress : Bool = false
    # Optional alternate Hugging Face cache root for model files.
    #
    # When unset, hf-hub follows the standard Hugging Face environment and
    # platform cache conventions.
    getter cache_dir : String?
    # Hardware acceleration for the sparse-embedding ONNX model.
    getter acceleration : AccelerationConfig?
    # Maximum wall-clock duration (in seconds) for a single embed call when
    # using [`SparseEmbeddingModelType::Plugin`]. `None` disables the timeout.
    getter max_embed_duration_secs : UInt64?
    def initialize(
      @model : SparseEmbeddingModelType = SparseEmbeddingModelType.from_json("{\"type\": \"preset\"}"),
      @batch_size : UInt64 = 0,
      @max_length : UInt64 = 0,
      @show_download_progress : Bool = false,
      @cache_dir : String? = nil,
      @acceleration : AccelerationConfig? = nil,
      @max_embed_duration_secs : UInt64? = nil
    )
    end
  end

  # Configuration for the summarisation post-processor.
  class SummarizationConfig
    include JSON::Serializable
    # Summarisation strategy.
    getter strategy : SummaryStrategy = SummaryStrategy::Extractive
    # Maximum summary length in tokens. `None` lets the backend pick a default.
    getter max_tokens : UInt32?
    # LLM configuration for the abstractive backend. Ignored when
    # `strategy = Extractive`. Required when `strategy = Abstractive`.
    getter llm : LlmConfig?
    def initialize(
      @strategy : SummaryStrategy = SummaryStrategy::Extractive,
      @max_tokens : UInt32? = nil,
      @llm : LlmConfig? = nil
    )
    end
  end

  # Configuration for audio/video transcription (speech-to-text).
  #
  # When present and `enabled`, Xberg will route audio and video files
  # (mp3, mp4, m4a, wav, webm, etc.) through the transcription pipeline.
  #
  # The heavy dependencies (ORT, hf-hub, symphonia) are only pulled when the
  # `transcription` feature is enabled. The config struct itself is available
  # under `transcription-types` so that `ExtractionConfig` round-trips on all
  # targets.
  #
  # All fields have sensible defaults. The recommended starting point is:
  #
  # ```toml
  # [extraction.transcription]
  # enabled = true
  # model = "tiny"
  # ```
  class TranscriptionConfig
    include JSON::Serializable
    # Master switch. When false the block is ignored and audio files fall back
    # to the normal "unsupported format" path.
    getter enabled : Bool = true
    # Whisper model size to use.
    #
    # Smaller = faster + lower memory. `tiny` is the pragmatic default for
    # first-time users and CI.
    getter model : WhisperModel = WhisperModel::Tiny
    # Optional language hint (ISO-639-1 code, e.g. "en", "de").
    #
    # When `None` (default), the current engine falls back to English.
    # For deterministic production output, always set this explicitly.
    getter language : String?
    # Whether to request segment-level timestamps.
    #
    # Accepted for forward compatibility. The current engine always uses
    # `<|notimestamps|>` and does not emit segment metadata yet.
    getter timestamps : Bool = false
    # Hard safety limit on input duration (milliseconds).
    #
    # Files longer than this are rejected after decode, before model work.
    # Default: 30 minutes. Set to `None` to disable (not recommended for
    # untrusted input).
    getter max_duration_ms : UInt64?
    # Hard safety limit on input size (bytes).
    #
    # Default: 512 MiB. Protects against pathological or malicious uploads.
    getter max_bytes : UInt64?
    # Wall-clock timeout for the entire transcription operation (ms).
    #
    # Default: 10 minutes. Reserved for timeout enforcement; the current
    # extractor does not enforce this field yet.
    getter timeout_ms : UInt64?
    # Optional alternate Hugging Face cache root for Whisper models.
    #
    # When unset, hf-hub follows `HF_HUB_CACHE`, `HUGGINGFACE_HUB_CACHE`,
    # `HF_HOME`, XDG, and platform defaults. Files remain in the standard
    # content-addressed snapshot layout and are not copied into an Xberg cache.
    getter model_cache_dir : String?
    # Allow network access to download models from Hugging Face Hub.
    #
    # When `false`, only previously cached models may be used. Useful for
    # air-gapped or fully offline deployments.
    getter allow_network : Bool = true
    # Request SHA256 verification of downloaded model files.
    #
    # Defaults to `false` because the resolver downloads from mutable Hugging
    # Face refs unless callers pin and verify models out-of-band. Explicit
    # `true` requests are rejected by the model resolver until pinned checksum
    # metadata is available.
    getter verify_hash : Bool = false
    def initialize(
      @enabled : Bool = true,
      @model : WhisperModel = WhisperModel::Tiny,
      @language : String? = nil,
      @timestamps : Bool = false,
      @max_duration_ms : UInt64? = nil,
      @max_bytes : UInt64? = nil,
      @timeout_ms : UInt64? = nil,
      @model_cache_dir : String? = nil,
      @allow_network : Bool = true,
      @verify_hash : Bool = false
    )
    end
  end

  # Configuration for the translation post-processor.
  class TranslationConfig
    include JSON::Serializable
    # BCP-47 language tag for the target language (e.g. `"de"`, `"fr-CA"`).
    getter target_lang : String = ""
    # Optional explicit source language. `None` asks the backend to auto-detect.
    getter source_lang : String?
    # Translate the formatted (Markdown/HTML) rendition alongside plain text when
    # `formatted_content` is present.
    getter preserve_markup : Bool = false
    # LLM configuration used for translation.
    getter llm : LlmConfig = LlmConfig.from_json("{}")
    def initialize(
      @target_lang : String = "",
      @source_lang : String? = nil,
      @preserve_markup : Bool = false,
      @llm : LlmConfig = LlmConfig.from_json("{}")
    )
    end
  end

  # Configuration for tree-sitter language pack integration.
  #
  # Controls grammar download behavior and code analysis options.
  #
  # # Example (TOML)
  #
  # ```toml
  # [tree_sitter]
  # languages = ["python", "rust"]
  # groups = ["web"]
  #
  # [tree_sitter.process]
  # structure = true
  # comments = true
  # docstrings = true
  # ```
  class TreeSitterConfig
    include JSON::Serializable
    # Enable code intelligence processing (default: true).
    #
    # When `false`, tree-sitter analysis is completely skipped even if
    # the config section is present.
    getter enabled : Bool = true
    # Custom cache directory for downloaded grammars.
    #
    # When `None`, uses the default: `~/.cache/tree-sitter-language-pack/v{version}/libs/`.
    getter cache_dir : String?
    # Languages to pre-download on init (e.g., `["python", "rust"]`).
    getter languages : Array(String)?
    # Language groups to pre-download (e.g., `["web", "systems", "scripting"]`).
    getter groups : Array(String)?
    # Processing options for code analysis.
    getter process : TreeSitterProcessConfig = TreeSitterProcessConfig.from_json("{}")
    def initialize(
      @enabled : Bool = true,
      @cache_dir : String? = nil,
      @languages : Array(String)? = nil,
      @groups : Array(String)? = nil,
      @process : TreeSitterProcessConfig = TreeSitterProcessConfig.from_json("{}")
    )
    end
  end

  # Processing options for tree-sitter code analysis.
  #
  # Controls which analysis features are enabled when extracting code files.
  class TreeSitterProcessConfig
    include JSON::Serializable
    # Extract structural items (functions, classes, structs, etc.). Default: true.
    getter structure : Bool = true
    # Extract import statements. Default: true.
    getter imports : Bool = true
    # Extract export statements. Default: true.
    getter exports : Bool = true
    # Extract comments. Default: false.
    getter comments : Bool = false
    # Extract docstrings. Default: false.
    getter docstrings : Bool = false
    # Extract symbol definitions. Default: false.
    getter symbols : Bool = false
    # Include parse diagnostics. Default: false.
    getter diagnostics : Bool = false
    # Extract a hierarchical key/value data tree from data-format files
    # (JSON, YAML, TOML, XML, CSV, etc.). Default: false.
    getter data_extraction : Bool = false
    # Maximum chunk size in bytes. `None` disables chunking.
    getter chunk_max_size : UInt64?
    # Content rendering mode for code extraction.
    getter content_mode : CodeContentMode = CodeContentMode::Chunks
    def initialize(
      @structure : Bool = true,
      @imports : Bool = true,
      @exports : Bool = true,
      @comments : Bool = false,
      @docstrings : Bool = false,
      @symbols : Bool = false,
      @diagnostics : Bool = false,
      @data_extraction : Bool = false,
      @chunk_max_size : UInt64? = nil,
      @content_mode : CodeContentMode = CodeContentMode::Chunks
    )
    end
  end

  # A supported document format entry.
  #
  # Represents a file extension and its corresponding MIME type that Xberg can process.
  class SupportedFormat
    include JSON::Serializable
    # File extension (without leading dot), e.g., "pdf", "docx"
    getter extension : String = ""
    # MIME type string, e.g., "application/pdf"
    getter mime_type : String = ""
    def initialize(
      @extension : String = "",
      @mime_type : String = ""
    )
    end
  end

  # API server configuration.
  #
  # This struct holds all configuration options for the Xberg API server,
  # including host/port settings, CORS configuration, and upload limits.
  #
  # # Defaults
  #
  # - `host`: "127.0.0.1" (localhost only)
  # - `port`: 8000
  # - `cors_origins`: empty vector (allows all origins)
  # - `max_request_body_bytes`: 104_857_600 (100 MB)
  # - `max_multipart_field_bytes`: 104_857_600 (100 MB)
  class ServerConfig
    include JSON::Serializable
    # Server host address (e.g., "127.0.0.1", "0.0.0.0")
    getter host : String = ""
    # Server port number
    getter port : UInt16 = 0
    # CORS allowed origins. Empty vector means allow all origins.
    #
    # If this is an empty vector, the server will accept requests from any origin.
    # If populated with specific origins (e.g., `"https://example.com"`), only
    # those origins will be allowed.
    getter cors_origins : Array(String) = [] of String
    # Maximum size of request body in bytes (default: 100 MB)
    getter max_request_body_bytes : UInt64 = 0
    # Maximum size of multipart fields in bytes (default: 100 MB)
    getter max_multipart_field_bytes : UInt64 = 0
    def initialize(
      @host : String = "",
      @port : UInt16 = 0,
      @cors_origins : Array(String) = [] of String,
      @max_request_body_bytes : UInt64 = 0,
      @max_multipart_field_bytes : UInt64 = 0
    )
    end
  end

  # Result of parsing a structured data file (JSON, JSONL, YAML, or TOML).
  class StructuredDataResult
    include JSON::Serializable
    # The extracted text content, formatted for readability.
    getter content : String = ""
    # The source format identifier (e.g. `"json"`, `"yaml"`, `"toml"`).
    getter format : String = ""
    # Key-value metadata extracted from recognized text fields.
    getter metadata : Hash(String, String) = {} of String => String
    # JSON paths of fields that were classified as text-bearing.
    getter text_fields : Array(String) = [] of String
    # The parsed document as a canonical `serde_json::Value` tree, when the
    # source format could be represented as one. `None` only for TOML inputs
    # whose `toml::Value` fails to round-trip through `serde_json::Value`
    # (xberg-io/xberg#155): the extractor falls back to a raw code block in
    # that case.
    getter value : JSON::Any?
    # Flattened `path: value` renderings for every leaf field, in traversal
    # order. Previously computed and discarded (xberg-io/xberg#166); now
    # surfaced so callers get a full-text view even when the structured
    # renderer only emits headings/lists for a subset of fields.
    getter flattened : Array(String) = [] of String
    def initialize(
      @content : String = "",
      @format : String = "",
      @metadata : Hash(String, String) = {} of String => String,
      @text_fields : Array(String) = [] of String,
      @value : JSON::Any? = nil,
      @flattened : Array(String) = [] of String
    )
    end
  end

  # Application properties from docProps/app.xml for DOCX
  #
  # Contains Word-specific document statistics and metadata.
  class DocxAppProperties
    include JSON::Serializable
    # Application name (e.g., "Microsoft Office Word")
    getter application : String?
    # Application version
    getter app_version : String?
    # Template filename
    getter template : String?
    # Total editing time in minutes
    getter total_time : Int32?
    # Number of pages
    getter pages : Int32?
    # Number of words
    getter words : Int32?
    # Number of characters (excluding spaces)
    getter characters : Int32?
    # Number of characters (including spaces)
    getter characters_with_spaces : Int32?
    # Number of lines
    getter lines : Int32?
    # Number of paragraphs
    getter paragraphs : Int32?
    # Company name
    getter company : String?
    # Document security level
    getter doc_security : Int32?
    # Scale crop flag
    getter scale_crop : Bool?
    # Links up to date flag
    getter links_up_to_date : Bool?
    # Shared document flag
    getter shared_doc : Bool?
    # Hyperlinks changed flag
    getter hyperlinks_changed : Bool?
    def initialize(
      @application : String? = nil,
      @app_version : String? = nil,
      @template : String? = nil,
      @total_time : Int32? = nil,
      @pages : Int32? = nil,
      @words : Int32? = nil,
      @characters : Int32? = nil,
      @characters_with_spaces : Int32? = nil,
      @lines : Int32? = nil,
      @paragraphs : Int32? = nil,
      @company : String? = nil,
      @doc_security : Int32? = nil,
      @scale_crop : Bool? = nil,
      @links_up_to_date : Bool? = nil,
      @shared_doc : Bool? = nil,
      @hyperlinks_changed : Bool? = nil
    )
    end
  end

  # Application properties from docProps/app.xml for XLSX
  #
  # Contains Excel-specific document metadata.
  class XlsxAppProperties
    include JSON::Serializable
    # Application name (e.g., "Microsoft Excel")
    getter application : String?
    # Application version
    getter app_version : String?
    # Document security level
    getter doc_security : Int32?
    # Scale crop flag
    getter scale_crop : Bool?
    # Links up to date flag
    getter links_up_to_date : Bool?
    # Shared document flag
    getter shared_doc : Bool?
    # Hyperlinks changed flag
    getter hyperlinks_changed : Bool?
    # Company name
    getter company : String?
    # Worksheet names
    getter worksheet_names : Array(String) = [] of String
    def initialize(
      @application : String? = nil,
      @app_version : String? = nil,
      @doc_security : Int32? = nil,
      @scale_crop : Bool? = nil,
      @links_up_to_date : Bool? = nil,
      @shared_doc : Bool? = nil,
      @hyperlinks_changed : Bool? = nil,
      @company : String? = nil,
      @worksheet_names : Array(String) = [] of String
    )
    end
  end

  # Application properties from docProps/app.xml for PPTX
  #
  # Contains PowerPoint-specific document metadata.
  class PptxAppProperties
    include JSON::Serializable
    # Application name (e.g., "Microsoft Office PowerPoint")
    getter application : String?
    # Application version
    getter app_version : String?
    # Total editing time in minutes
    getter total_time : Int32?
    # Company name
    getter company : String?
    # Document security level
    getter doc_security : Int32?
    # Scale crop flag
    getter scale_crop : Bool?
    # Links up to date flag
    getter links_up_to_date : Bool?
    # Shared document flag
    getter shared_doc : Bool?
    # Hyperlinks changed flag
    getter hyperlinks_changed : Bool?
    # Number of slides
    getter slides : Int32?
    # Number of notes
    getter notes : Int32?
    # Number of hidden slides
    getter hidden_slides : Int32?
    # Number of multimedia clips
    getter multimedia_clips : Int32?
    # Presentation format (e.g., "Widescreen", "Standard")
    getter presentation_format : String?
    # Slide titles
    getter slide_titles : Array(String) = [] of String
    def initialize(
      @application : String? = nil,
      @app_version : String? = nil,
      @total_time : Int32? = nil,
      @company : String? = nil,
      @doc_security : Int32? = nil,
      @scale_crop : Bool? = nil,
      @links_up_to_date : Bool? = nil,
      @shared_doc : Bool? = nil,
      @hyperlinks_changed : Bool? = nil,
      @slides : Int32? = nil,
      @notes : Int32? = nil,
      @hidden_slides : Int32? = nil,
      @multimedia_clips : Int32? = nil,
      @presentation_format : String? = nil,
      @slide_titles : Array(String) = [] of String
    )
    end
  end

  # Dublin Core metadata from docProps/core.xml
  #
  # Contains standard metadata fields defined by the Dublin Core standard
  # and Office-specific extensions.
  class CoreProperties
    include JSON::Serializable
    # Document title
    getter title : String?
    # Document subject/topic
    getter subject : String?
    # Document creator/author
    getter creator : String?
    # Keywords or tags
    getter keywords : String?
    # Document description/abstract
    getter description : String?
    # User who last modified the document
    getter last_modified_by : String?
    # Revision number
    getter revision : String?
    # Creation timestamp (ISO 8601)
    getter created : String?
    # Last modification timestamp (ISO 8601)
    getter modified : String?
    # Document category
    getter category : String?
    # Content status (Draft, Final, etc.)
    getter content_status : String?
    # Document language
    getter language : String?
    # Unique identifier
    getter identifier : String?
    # Document version
    getter version : String?
    # Last print timestamp (ISO 8601)
    getter last_printed : String?
    def initialize(
      @title : String? = nil,
      @subject : String? = nil,
      @creator : String? = nil,
      @keywords : String? = nil,
      @description : String? = nil,
      @last_modified_by : String? = nil,
      @revision : String? = nil,
      @created : String? = nil,
      @modified : String? = nil,
      @category : String? = nil,
      @content_status : String? = nil,
      @language : String? = nil,
      @identifier : String? = nil,
      @version : String? = nil,
      @last_printed : String? = nil
    )
    end
  end

  # Configuration for security limits across extractors.
  #
  # All limits are intentionally conservative to prevent DoS attacks
  # while still supporting legitimate documents.
  class SecurityLimits
    include JSON::Serializable
    # Maximum uncompressed size for archives (500 MB)
    getter max_archive_size : UInt64 = 524288000
    # Maximum compression ratio before flagging as potential bomb (100:1)
    getter max_compression_ratio : UInt64 = 100
    # Maximum number of files in archive (10,000)
    getter max_files_in_archive : UInt64 = 10000
    # Maximum nesting depth for structures (100)
    getter max_nesting_depth : UInt64 = 1024
    # Maximum length of any single XML entity / attribute / token (1 MiB).
    # This is a per-token cap, NOT a total cap — billion-laughs class
    # attacks where a single entity expands to hundreds of MB are caught
    # here, while normal long text content (a paragraph, a CDATA block) is
    # caught by `max_content_size` instead.
    getter max_entity_length : UInt64 = 1048576
    # Maximum string growth per document (100 MB)
    getter max_content_size : UInt64 = 104857600
    # Maximum iterations per operation
    getter max_iterations : UInt64 = 10000000
    # Maximum XML depth (100 levels)
    getter max_xml_depth : UInt64 = 1024
    # Maximum cells per table (100,000)
    getter max_table_cells : UInt64 = 100000
    def initialize(
      @max_archive_size : UInt64 = 524288000,
      @max_compression_ratio : UInt64 = 100,
      @max_files_in_archive : UInt64 = 10000,
      @max_nesting_depth : UInt64 = 1024,
      @max_entity_length : UInt64 = 1048576,
      @max_content_size : UInt64 = 104857600,
      @max_iterations : UInt64 = 10000000,
      @max_xml_depth : UInt64 = 1024,
      @max_table_cells : UInt64 = 100000
    )
    end
  end

  # Configuration for the token-reduction pipeline.
  class TokenReductionConfig
    include JSON::Serializable
    # Reduction intensity level.
    getter level : ReductionLevel = ReductionLevel::Off
    # ISO 639-1 language code hint for stopword selection (e.g. `"en"`, `"de"`).
    getter language_hint : String?
    # Preserve Markdown formatting tokens during reduction.
    getter preserve_markdown : Bool = false
    # Preserve code block contents unchanged.
    getter preserve_code : Bool = true
    # Cosine similarity threshold below which sentences are considered dissimilar.
    getter semantic_threshold : Float32 = 0.3
    # Use Rayon parallel iterators for multi-core processing.
    getter enable_parallel : Bool = true
    # Use SIMD-optimized text scanning where available.
    getter use_simd : Bool = true
    # Per-language custom stopword lists (`language_code → stopword_list`).
    getter custom_stopwords : Hash(String, Array(String))?
    # Regex patterns whose matched text is always preserved unchanged.
    getter preserve_patterns : Array(String) = [] of String
    # Target fraction of text to retain (0.0–1.0); `None` = no fixed target.
    getter target_reduction : Float32?
    # Group semantically similar sentences and emit only one per cluster.
    getter enable_semantic_clustering : Bool = false
    # Skip removal of words with "important" characteristics (all-caps
    # acronyms, words containing digits, mixed-case identifiers, very long
    # words) during the `Aggressive`/`Maximum` common-word removal pass.
    #
    # `true` (the default) protects those words even when they would
    # otherwise be dropped as low-value filler; `false` lets the frequency/
    # length heuristics apply uniformly to every word, including ones that
    # look like acronyms or technical terms (#269).
    getter preserve_important_words : Bool = true
    def initialize(
      @level : ReductionLevel = ReductionLevel::Off,
      @language_hint : String? = nil,
      @preserve_markdown : Bool = false,
      @preserve_code : Bool = true,
      @semantic_threshold : Float32 = 0.3,
      @enable_parallel : Bool = true,
      @use_simd : Bool = true,
      @custom_stopwords : Hash(String, Array(String))? = nil,
      @preserve_patterns : Array(String) = [] of String,
      @target_reduction : Float32? = nil,
      @enable_semantic_clustering : Bool = false,
      @preserve_important_words : Bool = true
    )
    end
  end

  # One detected PII span in the input text.
  class PatternMatch
    include JSON::Serializable
    # Inclusive byte-offset start of the match in the source text.
    getter start : UInt64 = 0
    # Exclusive byte-offset end of the match.
    @[JSON::Field(key: "end")]
    getter end_ : UInt64 = 0
    # Category the match belongs to.
    getter category : PiiCategory = PiiCategory::Email.new
    # Matched substring (owned copy — pattern engine returns owned data so the
    # caller can free the original text if needed before replacement).
    getter text : String = ""
    def initialize(
      @start : UInt64 = 0,
      @end_ : UInt64 = 0,
      @category : PiiCategory = PiiCategory::Email.new,
      @text : String = ""
    )
    end
  end

  # Per-category running counter for [`RedactionStrategy::TokenReplace`].
  class TokenCounter
    # Wraps the FFI handle; do not construct directly.
    def initialize(@handle : Void*)
    end
    # Raw handle for passing back across the C ABI.
    def to_unsafe : Void*
      @handle
    end
    def finalize
      LibXberg.token_counter_free(@handle) unless @handle.null?
    end
    # Create a fresh counter with no previous state.
    def self.new() : TokenCounter
    __ptr = LibXberg.token_counter_new()
    raise "LibXberg.token_counter_new returned a null pointer" if __ptr.null?
    TokenCounter.new(__ptr)
    end
  end

  # Configuration for markdown footnote and citation parsing.
  class FootnoteConfig
    include JSON::Serializable
    # Whether to parse the structured citation block (default: true).
    #
    # When enabled, the parser will look for and extract citations from
    # the block after `---` + `<!-- citations ... -->`.
    getter parse_citations : Bool = true
    def initialize(
      @parse_citations : Bool = true
    )
    end
  end

  # A footnote anchor reference in markdown text.
  #
  # Represents a `[^label]` use-site (not a definition).
  class FootnoteAnchor
    include JSON::Serializable
    # The label of the footnote reference (e.g., "1" in `[^1]`).
    getter label : String = ""
    # Byte offset of the anchor in the markdown text.
    getter offset : UInt64 = 0
    def initialize(
      @label : String = "",
      @offset : UInt64 = 0
    )
    end
  end

  # A footnote definition from markdown text.
  #
  # Represents `[^label]: content` declarations (including multi-line continuations).
  class FootnoteDefinition
    include JSON::Serializable
    # The label of the footnote (e.g., "1" in `[^1]: ...`).
    getter label : String = ""
    # The full content of the footnote definition.
    getter content : String = ""
    # Byte offset of the definition line in the markdown text.
    getter offset : UInt64 = 0
    def initialize(
      @label : String = "",
      @content : String = "",
      @offset : UInt64 = 0
    )
    end
  end

  # A structured citation from a citation block.
  #
  # Parsed from entries like:
  # `[^srcN]: source, locator, excerpt: "text"`
  class Citation
    include JSON::Serializable
    # The label of the citation (e.g., "src1" in `[^src1]: ...`).
    getter label : String = ""
    # The source reference (path, URL, or identifier).
    getter source : String = ""
    # Optional locator within the source (e.g., "page 3" or "section 2.1").
    getter locator : String?
    # Optional excerpt — quoted text from the source.
    getter excerpt : String?
    def initialize(
      @label : String = "",
      @source : String = "",
      @locator : String? = nil,
      @excerpt : String? = nil
    )
    end
  end

  # A PDF annotation extracted from a document page.
  class PdfAnnotation
    include JSON::Serializable
    # The type of annotation.
    getter annotation_type : PdfAnnotationType = PdfAnnotationType::Text
    # Text content of the annotation (e.g., comment text, link URL).
    getter content : String?
    # Page number where the annotation appears (1-indexed).
    getter page_number : UInt32 = 0
    # Bounding box of the annotation on the page.
    getter bounding_box : BoundingBox?
    # Author/creator of the annotation (PDF `/T` entry).
    getter author : String?
    # Last modification date of the annotation (PDF `/M` entry), as a raw
    # PDF date string (e.g. `"D:20240115120000Z"`).
    getter modified : String?
    # Annotation colour (PDF `/C` entry), normalised to a CSS-compatible
    # `#rrggbb` hex string. Gray and CMYK colour spaces are converted to RGB.
    getter color : String?
    # Subject of the annotation (PDF `/Subj` entry).
    getter subject : String?
    # Per-line bounding boxes derived from the annotation's `/QuadPoints`
    # entry. Present for text markup annotations (Highlight, Underline,
    # StrikeOut, Squiggly), one box per marked line/run of text.
    getter quad_points : Array(BoundingBox)?
    # The document text covered by [`Self::quad_points`], recovered from the
    # page content underneath the marked-up region. Populated for
    # Highlight, Underline, StrikeOut, and Squiggly annotations when the
    # underlying text could be recovered.
    getter marked_text : String?
    def initialize(
      @annotation_type : PdfAnnotationType = PdfAnnotationType::Text,
      @content : String? = nil,
      @page_number : UInt32 = 0,
      @bounding_box : BoundingBox? = nil,
      @author : String? = nil,
      @modified : String? = nil,
      @color : String? = nil,
      @subject : String? = nil,
      @quad_points : Array(BoundingBox)? = nil,
      @marked_text : String? = nil
    )
    end
  end

  # Classification result for a single page.
  class PageClassification
    include JSON::Serializable
    # 1-indexed page number this classification belongs to.
    getter page_number : UInt32 = 0
    # Labels assigned to the page. Single-label classification yields exactly one
    # entry; multi-label classification yields any subset of the configured label set.
    getter labels : Array(ClassificationLabel) = [] of ClassificationLabel
    def initialize(
      @page_number : UInt32 = 0,
      @labels : Array(ClassificationLabel) = [] of ClassificationLabel
    )
    end
  end

  # A single label + confidence pair.
  class ClassificationLabel
    include JSON::Serializable
    # Label name as configured in `PageClassificationConfig::labels`.
    getter label : String = ""
    # Backend-reported confidence in `[0.0, 1.0]`. `None` when the backend (e.g. an LLM
    # prompt without explicit confidence schema) did not report one.
    getter confidence : Float32?
    def initialize(
      @label : String = "",
      @confidence : Float32? = nil
    )
    end
  end

  # Comprehensive Djot document structure with semantic preservation.
  #
  # This type captures the full richness of Djot markup, including:
  # - Block-level structures (headings, lists, blockquotes, code blocks, etc.)
  # - Inline formatting (emphasis, strong, highlight, subscript, superscript, etc.)
  # - Attributes (classes, IDs, key-value pairs)
  # - Links, images, footnotes
  # - Math expressions (inline and display)
  # - Tables with full structure
  #
  # Available when the `djot` feature is enabled.
  class DjotContent
    include JSON::Serializable
    # Plain text representation for backwards compatibility
    getter plain_text : String = ""
    # Structured block-level content
    getter blocks : Array(FormattedBlock) = [] of FormattedBlock
    # Metadata from YAML frontmatter
    getter metadata : Metadata = Metadata.from_json("{}")
    # Extracted tables as structured data
    getter tables : Array(Table) = [] of Table
    # Extracted images with metadata
    getter images : Array(DjotImage) = [] of DjotImage
    # Extracted links with URLs
    getter links : Array(DjotLink) = [] of DjotLink
    # Footnote definitions
    getter footnotes : Array(Footnote) = [] of Footnote
    def initialize(
      @plain_text : String = "",
      @blocks : Array(FormattedBlock) = [] of FormattedBlock,
      @metadata : Metadata = Metadata.from_json("{}"),
      @tables : Array(Table) = [] of Table,
      @images : Array(DjotImage) = [] of DjotImage,
      @links : Array(DjotLink) = [] of DjotLink,
      @footnotes : Array(Footnote) = [] of Footnote
    )
    end
  end

  # Block-level element in a Djot document.
  #
  # Represents structural elements like headings, paragraphs, lists, code blocks, etc.
  class FormattedBlock
    include JSON::Serializable
    # Type of block element
    getter block_type : BlockType = BlockType::Paragraph
    # Heading level (1-6) for headings, or nesting level for lists
    getter level : UInt64?
    # Inline content within the block
    getter inline_content : Array(InlineElement) = [] of InlineElement
    # Language identifier for code blocks
    getter language : String?
    # Raw code content for code blocks
    getter code : String?
    # Nested blocks for containers (blockquotes, list items, divs)
    getter children : Array(FormattedBlock) = [] of FormattedBlock
    def initialize(
      @block_type : BlockType = BlockType::Paragraph,
      @level : UInt64? = nil,
      @inline_content : Array(InlineElement) = [] of InlineElement,
      @language : String? = nil,
      @code : String? = nil,
      @children : Array(FormattedBlock) = [] of FormattedBlock
    )
    end
  end

  # Inline element within a block.
  #
  # Represents text with formatting, links, images, etc.
  class InlineElement
    include JSON::Serializable
    # Type of inline element
    getter element_type : InlineType = InlineType::Text
    # Text content
    getter content : String = ""
    # Additional metadata (e.g., href for links, src/alt for images)
    getter metadata : Hash(String, String)?
    def initialize(
      @element_type : InlineType = InlineType::Text,
      @content : String = "",
      @metadata : Hash(String, String)? = nil
    )
    end
  end

  # Image element in Djot.
  class DjotImage
    include JSON::Serializable
    # Image source URL or path
    getter src : String = ""
    # Alternative text
    getter alt : String = ""
    # Optional title
    getter title : String?
    def initialize(
      @src : String = "",
      @alt : String = "",
      @title : String? = nil
    )
    end
  end

  # Link element in Djot.
  class DjotLink
    include JSON::Serializable
    # Link URL
    getter url : String = ""
    # Link text content
    getter text : String = ""
    # Optional title
    getter title : String?
    def initialize(
      @url : String = "",
      @text : String = "",
      @title : String? = nil
    )
    end
  end

  # Footnote in Djot.
  class Footnote
    include JSON::Serializable
    # Footnote label
    getter label : String = ""
    # Footnote content blocks
    getter content : Array(FormattedBlock) = [] of FormattedBlock
    def initialize(
      @label : String = "",
      @content : Array(FormattedBlock) = [] of FormattedBlock
    )
    end
  end

  # Top-level structured document representation.
  #
  # A flat array of nodes with index-based parent/child references forming a tree.
  # Root-level nodes have `parent: None`. Use `body_roots()` and `furniture_roots()`
  # to iterate over top-level content by layer.
  #
  # # Validation
  #
  # Call `validate()` after construction to verify all node indices are in bounds
  # and parent-child relationships are bidirectionally consistent.
  class DocumentStructure
    include JSON::Serializable
    # All nodes in document/reading order.
    getter nodes : Array(DocumentNode) = [] of DocumentNode
    # Origin format identifier (e.g. "docx", "pptx", "html", "pdf").
    #
    # Allows renderers to apply format-aware heuristics when converting
    # the document tree to output formats.
    getter source_format : String?
    # Resolved relationships between nodes (footnote refs, citations, anchor links, etc.).
    #
    # Populated during derivation from the internal document representation.
    # Empty when no relationships are detected.
    getter relationships : Array(DocumentRelationship) = [] of DocumentRelationship
    # Sorted, deduplicated list of node type names present in this document.
    #
    # Each value is the snake_case `node_type` tag of the corresponding
    # [`NodeContent`] variant (e.g. `"paragraph"`, `"heading"`, `"table"`, …).
    #
    # Computed from `nodes` via [`DocumentStructure::finalize_node_types`].
    # Empty until that method is called (internal construction paths call it
    # at the end of derivation).
    getter node_types : Array(String) = [] of String
    def initialize(
      @nodes : Array(DocumentNode) = [] of DocumentNode,
      @source_format : String? = nil,
      @relationships : Array(DocumentRelationship) = [] of DocumentRelationship,
      @node_types : Array(String) = [] of String
    )
    end
  end

  # A resolved relationship between two nodes in the document tree.
  class DocumentRelationship
    include JSON::Serializable
    # Source node index (the referencing node).
    getter source : UInt32 = 0
    # Target node index (the referenced node).
    getter target : UInt32 = 0
    # Semantic kind of the relationship.
    getter kind : RelationshipKind = RelationshipKind::FootnoteReference
    def initialize(
      @source : UInt32 = 0,
      @target : UInt32 = 0,
      @kind : RelationshipKind = RelationshipKind::FootnoteReference
    )
    end
  end

  # A single node in the document tree.
  #
  # Each node has deterministic `id`, typed `content`, optional `parent`/`children`
  # for tree structure, and metadata like page number, bounding box, and content layer.
  class DocumentNode
    include JSON::Serializable
    # Deterministic identifier (hash of node type + text + page + position).
    #
    # Stable and unique within a single extraction response: every internal
    # construction path threads the node's position (its index in
    # `DocumentStructure::nodes`) into the hash, so identical
    # `(node_type, text, page)` tuples at different positions never collide.
    # Always serialised — `ChunkMetadata::node_ids` references it to join
    # chunks back to the nodes they were derived from.
    # `#[serde(default)]` covers the missing-field case on inbound JSON
    # (e.g. documents serialised before this field existed).
    getter id : String = ""
    # Node content — tagged enum, type-specific data only.
    getter content : NodeContent = NodeContent.from_json("{\"node_type\": \"title\"}")
    # Parent node index (`None` = root-level node).
    getter parent : UInt32?
    # Child node indices in reading order.
    getter children : Array(UInt32) = [] of UInt32
    # Content layer classification.
    #
    # Always serialised — Kotlin-Android (and any other typed binding) treats
    # the field as non-nullable, so omitting it from the JSON wire would
    # break consumer deserialisation.  `#[serde(default)]` covers the
    # missing-field case on inbound JSON.
    getter content_layer : ContentLayer = ContentLayer::Body
    # Page number where this node starts (1-indexed).
    getter page : UInt32?
    # Page number where this node ends (for multi-page tables/sections).
    getter page_end : UInt32?
    # Bounding box in document coordinates.
    getter bbox : BoundingBox?
    # Inline annotations (formatting, links) on this node's text content.
    #
    # Only meaningful for text-carrying nodes; empty for containers.
    getter annotations : Array(TextAnnotation) = [] of TextAnnotation
    # Format-specific key-value attributes.
    #
    # Extensible bag for miscellaneous data without a dedicated typed field: CSS classes,
    # LaTeX environment names, Excel cell formulas, slide layout names, etc.
    getter attributes : Hash(String, String)?
    def initialize(
      @id : String = "",
      @content : NodeContent = NodeContent.from_json("{\"node_type\": \"title\"}"),
      @parent : UInt32? = nil,
      @children : Array(UInt32) = [] of UInt32,
      @content_layer : ContentLayer = ContentLayer::Body,
      @page : UInt32? = nil,
      @page_end : UInt32? = nil,
      @bbox : BoundingBox? = nil,
      @annotations : Array(TextAnnotation) = [] of TextAnnotation,
      @attributes : Hash(String, String)? = nil
    )
    end
  end

  # Structured table grid with cell-level metadata.
  #
  # Stores row/column dimensions and a flat list of cells with position info.
  class TableGrid
    include JSON::Serializable
    # Number of rows in the table.
    getter rows : UInt32 = 0
    # Number of columns in the table.
    getter cols : UInt32 = 0
    # All cells in row-major order.
    getter cells : Array(GridCell) = [] of GridCell
    def initialize(
      @rows : UInt32 = 0,
      @cols : UInt32 = 0,
      @cells : Array(GridCell) = [] of GridCell
    )
    end
  end

  # Individual grid cell with position and span metadata.
  class GridCell
    include JSON::Serializable
    # Cell text content.
    getter content : String = ""
    # Zero-indexed row position.
    getter row : UInt32 = 0
    # Zero-indexed column position.
    getter col : UInt32 = 0
    # Number of rows this cell spans.
    getter row_span : UInt32 = 0
    # Number of columns this cell spans.
    getter col_span : UInt32 = 0
    # Whether this is a header cell.
    getter is_header : Bool = false
    # Bounding box for this cell (if available).
    getter bbox : BoundingBox?
    def initialize(
      @content : String = "",
      @row : UInt32 = 0,
      @col : UInt32 = 0,
      @row_span : UInt32 = 0,
      @col_span : UInt32 = 0,
      @is_header : Bool = false,
      @bbox : BoundingBox? = nil
    )
    end
  end

  # Inline text annotation — byte-range based formatting and links.
  #
  # Annotations reference byte offsets into the node's text content,
  # enabling precise identification of formatted regions.
  class TextAnnotation
    include JSON::Serializable
    # Start byte offset in the node's text content (inclusive).
    getter start : UInt32 = 0
    # End byte offset in the node's text content (exclusive).
    @[JSON::Field(key: "end")]
    getter end_ : UInt32 = 0
    # Annotation type.
    getter kind : AnnotationKind = AnnotationKind.from_json("{\"annotation_type\": \"bold\"}")
    def initialize(
      @start : UInt32 = 0,
      @end_ : UInt32 = 0,
      @kind : AnnotationKind = AnnotationKind.from_json("{\"annotation_type\": \"bold\"}")
    )
    end
  end

  # A single named entity detected in the extracted text.
  class Entity
    include JSON::Serializable
    # Canonical category the entity belongs to (PERSON, ORG, LOCATION, etc.).
    getter category : EntityCategory = EntityCategory::Person.new
    # Raw mention text exactly as it appeared in the source.
    getter text : String = ""
    # Byte-offset span in `ExtractedDocument::content` where the mention starts.
    getter start : UInt32 = 0
    # Byte-offset span in `ExtractedDocument::content` where the mention ends (exclusive).
    @[JSON::Field(key: "end")]
    getter end_ : UInt32 = 0
    # Backend-reported confidence in `[0.0, 1.0]`. `None` when the backend does not
    # expose confidence scores.
    getter confidence : Float32?
    def initialize(
      @category : EntityCategory = EntityCategory::Person.new,
      @text : String = "",
      @start : UInt32 = 0,
      @end_ : UInt32 = 0,
      @confidence : Float32? = nil
    )
    end
  end

  # Cheap structural counts for an extracted document.
  #
  # Populated on every [`ExtractedDocument`] returned by `extract` /
  # `extract_batch`, regardless of whether the heavy `pages` / `images`
  # collections are materialized. A caller that only needs "how many pages /
  # tables / images did this document have?" (reporting, cost estimation,
  # progress, quotas) can read these without enabling per-page or per-image
  # extraction.
  #
  # The page count comes from the parse (the extractor already walks the page
  # tree); it does not require opting into per-page content. `pages` is `0` for
  # inputs that are not page-addressable (e.g. plain text).
  class DocumentCounts
    include JSON::Serializable
    # Total pages in the source document (`0` when not page-addressable).
    getter pages : UInt64 = 0
    # Tables detected in the document.
    getter tables : UInt64 = 0
    # Images detected in the document.
    getter images : UInt64 = 0
    def initialize(
      @pages : UInt64 = 0,
      @tables : UInt64 = 0,
      @images : UInt64 = 0
    )
    end
  end

  # Structured per-language detection result: confidence, document share, and script —
  # the information the ISO-code-only `detected_languages` list cannot convey (#261).
  #
  # Populated by `language_detection` alongside `detected_languages`, with one
  # entry per language, in the same order as `detected_languages`.
  class LanguageConfidence
    include JSON::Serializable
    # ISO 639-3 language code, matching the corresponding entry in `detected_languages`.
    getter language : String = ""
    # Confidence for this language, in `[0.0, 1.0]`.
    #
    # In single-language mode this is whatlang's `Info::confidence()` for the whole
    # document. In multi-language mode this is the average whatlang confidence across
    # the document's 200-character chunks that were classified as this language.
    getter confidence : Float64 = 0.0
    # Share of the document's analyzed content classified as this language, in `[0.0, 1.0]`.
    #
    # In single-language mode this is always `1.0`. In multi-language mode this is the
    # fraction of 200-character chunks classified as this language (chunks that did not
    # meet `min_confidence` for any language are excluded from the count but still count
    # toward the denominator).
    getter proportion : Float64 = 0.0
    # Writing system whatlang detected for this language (e.g. `"Latin"`, `"Cyrillic"`).
    getter script : String = ""
    # Whether this detection is considered reliable.
    #
    # In single-language mode this is whatlang's own `Info::is_reliable()` (confidence
    # above whatlang's internal 0.9 threshold). In multi-language mode this is the
    # chunk-averaged `confidence` above that same 0.9 threshold, since whatlang's
    # `is_reliable()` only applies to a single detection.
    getter reliable : Bool = false
    def initialize(
      @language : String = "",
      @confidence : Float64 = 0.0,
      @proportion : Float64 = 0.0,
      @script : String = "",
      @reliable : Bool = false
    )
    end
  end

  # Document extracted by the core extraction pipeline.
  #
  # `extract` and `extract_batch` return an `ExtractionResult` envelope whose
  # `results` field contains these per-document payloads.
  class ExtractedDocument
    include JSON::Serializable
    # Plain-text representation of the extracted document content.
    getter content : String = ""
    # MIME type of the source document (e.g. `"application/pdf"`).
    getter mime_type : String = ""
    # Document-level metadata (author, title, dates, format-specific fields).
    getter metadata : Metadata = Metadata.from_json("{}")
    # Extraction strategy used to produce the returned text.
    #
    # Populated when the extractor can reliably distinguish native text extraction,
    # OCR-only extraction, or mixed native/OCR output.
    getter extraction_method : ExtractionMethod?
    # Tables extracted from the document, each with structured cell data.
    getter tables : Array(Table) = [] of Table
    # Cheap structural counts (pages, tables, images).
    #
    # Always populated by the extraction pipeline, even when the `pages` /
    # `images` collections are `None`. See [`DocumentCounts`].
    getter counts : DocumentCounts = DocumentCounts.from_json("{}")
    # ISO 639-1 language codes detected in the document content.
    getter detected_languages : Array(String)?
    # Structured per-language detection results: confidence, document share, script,
    # and reliability, alongside the ISO-code-only `detected_languages` (#261).
    #
    # One entry per language in `detected_languages`, in the same order. `None` under
    # the same conditions as `detected_languages`: detection disabled, empty input
    # text, or no language met the configured `min_confidence`.
    getter detected_language_confidences : Array(LanguageConfidence)?
    # Text chunks when chunking is enabled.
    #
    # When chunking configuration is provided, the content is split into
    # overlapping chunks for efficient processing. Each chunk contains the text,
    # optional embeddings (if enabled), and metadata about its position.
    getter chunks : Array(Chunk)?
    # Extracted images from the document.
    #
    # When image extraction is enabled via `ImageExtractionConfig`, this field
    # contains all images found in the document with their raw data and metadata.
    # Each image may optionally contain a nested `ocr_result` if OCR was performed.
    getter images : Array(ExtractedImage)?
    # Per-page content when page extraction is enabled.
    #
    # When page extraction is configured, the document is split into per-page content
    # with tables and images mapped to their respective pages.
    getter pages : Array(PageContent)?
    # Semantic elements when element-based result format is enabled.
    #
    # When result_format is set to ElementBased, this field contains semantic
    # elements with type classification, unique identifiers, and metadata for
    # Unstructured-compatible element-based processing.
    getter elements : Array(Element)?
    # Rich Djot content structure (when extracting Djot documents).
    #
    # When extracting Djot documents with structured extraction enabled,
    # this field contains the full semantic structure including:
    # - Block-level elements with nesting
    # - Inline formatting with attributes
    # - Links, images, footnotes
    # - Math expressions
    # - Complete attribute information
    #
    # The `content` field still contains plain text for backward compatibility.
    #
    # Always `None` for non-Djot documents.
    getter djot_content : DjotContent?
    # OCR elements with full spatial and confidence metadata.
    #
    # When OCR is performed with element extraction enabled, this field contains
    # the structured representation of detected text including:
    # - Bounding geometry (rectangles or quadrilaterals)
    # - Confidence scores (detection and recognition)
    # - Rotation information
    # - Hierarchical relationships (Tesseract only)
    #
    # This field preserves all metadata that would otherwise be lost when
    # converting to plain text or markdown output formats.
    #
    # Only populated when `OcrElementConfig.include_elements` is true.
    getter ocr_elements : Array(OcrElement)?
    # Structured document tree (when document structure extraction is enabled).
    #
    # When `include_document_structure` is true in `ExtractionConfig`, this field
    # contains the full hierarchical representation of the document including:
    # - Heading-driven section nesting
    # - Table grids with cell-level metadata
    # - Content layer classification (body, header, footer, footnote)
    # - Inline text annotations (formatting, links)
    # - Bounding boxes and page numbers
    #
    # Independent of `result_format` — can be combined with Unified or ElementBased.
    getter document : DocumentStructure?
    # Extracted keywords when keyword extraction is enabled.
    #
    # When keyword extraction (RAKE or YAKE) is configured, this field contains
    # the extracted keywords with scores, algorithm info, and position data.
    # Previously stored in `metadata.additional["keywords"]`.
    getter extracted_keywords : Array(Keyword)?
    # Document quality score from quality analysis.
    #
    # A value between 0.0 and 1.0 indicating the overall text quality.
    # Previously stored in `metadata.additional["quality_score"]`.
    getter quality_score : Float64?
    # Non-fatal warnings collected during processing pipeline stages.
    #
    # Captures errors from optional pipeline features (embedding, chunking,
    # language detection, output formatting) that don't prevent extraction
    # but may indicate degraded results.
    # Previously stored as individual keys in `metadata.additional`.
    getter processing_warnings : Array(ProcessingWarning) = [] of ProcessingWarning
    # PDF annotations extracted from the document.
    #
    # When annotation extraction is enabled via `PdfConfig::extract_annotations`,
    # this field contains text notes, highlights, links, stamps, and other
    # annotations found in PDF documents.
    getter annotations : Array(PdfAnnotation)?
    # Nested extraction results from archive contents.
    #
    # When extracting archives, each processable file inside produces its own
    # full extraction result. Set to `None` for non-archive formats.
    # Use `max_archive_depth` in config to control recursion depth.
    getter children : Array(ArchiveEntry)?
    # URIs/links discovered during document extraction.
    #
    # Contains hyperlinks, image references, citations, email addresses, and
    # other URI-like references found in the document. Always extracted when
    # present in the source document.
    getter uris : Array(ExtractedUri)?
    # Tracked changes embedded in the source document.
    #
    # Populated by per-format extractors that understand change-tracking
    # metadata (DOCX `w:ins`/`w:del`/`w:rPrChange`, ODT `text:change-*`,
    # …). Every extractor defaults to `None` until its format-specific
    # implementation is added. Extractors that do populate this field follow
    # the "accepted-changes" convention: inserted text is present in
    # `content`, deleted text is absent — the revision list is the separate
    # audit trail.
    getter revisions : Array(DocumentRevision)?
    # Structured extraction output from LLM-based JSON schema extraction.
    #
    # When `structured_extraction` is configured in `ExtractionConfig`, the
    # extracted document content is sent to a VLM with the provided JSON schema.
    # The response is parsed and stored here as a JSON value matching the schema.
    getter structured_output : JSON::Any?
    # Code intelligence results from tree-sitter analysis.
    #
    # Populated when extracting source code files with the `tree-sitter` feature.
    # Contains metrics, structural analysis, imports/exports, comments,
    # docstrings, symbols, diagnostics, and optionally chunked code segments.
    #
    # Stored as an opaque JSON value so that all language bindings (Go, Java,
    # C#, …) can deserialize it as a raw JSON object rather than a typed struct.
    # The underlying type is `tree_sitter_language_pack::ProcessResult`.
    getter code_intelligence : JSON::Any?
    # LLM token usage and cost data for all LLM calls made during this extraction.
    #
    # Contains one entry per LLM call. Multiple entries are produced when
    # VLM OCR, structured extraction, or LLM embeddings run during
    # the same extraction.
    #
    # `None` when no LLM was used.
    getter llm_usage : Array(LlmUsage)?
    # Named entities detected in `content` by the NER post-processor.
    #
    # `None` when no NER backend is configured. Populated by the `xberg-gliner`
    # ONNX backend or the LLM-driven backend (see `crates/xberg/src/text/ner/`).
    getter entities : Array(Entity)?
    # Summary of `content` produced by the summarisation post-processor.
    #
    # `None` when summarisation is not configured. Populated by the TextRank
    # extractive backend (deterministic, no external service) or by the
    # liter-llm-driven abstractive backend.
    getter summary : DocumentSummary?
    # Confidence score computed by the heuristics pipeline.
    #
    # Populated when the `heuristics` feature is enabled and confidence
    # scoring has been performed.  Combines text-coverage, OCR aggregate
    # confidence, and schema-compliance into a single `[0, 1]` value.
    #
    # `None` when confidence scoring is not configured or the feature is
    # absent.
    getter extraction_confidence : ExtractionConfidence?
    # Translation of `content` produced by the translation post-processor.
    #
    # `None` when translation is not configured.
    getter translation : Translation?
    # Per-page classifications produced by the page-classification post-processor.
    #
    # `None` when classification is not configured.
    getter page_classifications : Array(PageClassification)?
    # Audit report of redactions applied by the redaction post-processor.
    #
    # The redaction processor rewrites `content`, `formatted_content`, every
    # chunk's text, and the textual fields of `entities` / `summary` / `translation` /
    # `page_classifications` in place. This report describes what was found and how it
    # was replaced. `None` when redaction is not configured.
    getter redaction_report : RedactionReport?
    # Mathematical formulas recognized in the document.
    #
    # Populated by the layout-guided formula pipeline when the
    # `layout-detection` feature is enabled and the document contains regions
    # classified as formulas. Empty otherwise.
    getter formulas : Array(Formula) = [] of Formula
    # Form fields extracted from a PDF's AcroForm or XFA structure.
    #
    # Populated by the PDF extractor when `PdfConfig::extract_form_fields` is
    # enabled (default) and the document is a fillable form. Empty otherwise.
    getter form_fields : Array(PdfFormField) = [] of PdfFormField
    # Pre-rendered content in the requested output format.
    #
    # Populated during `derive_extraction_result` before tree derivation consumes
    # element data. `apply_output_format` swaps this into `content` at the end
    # of the pipeline, after post-processors have operated on plain text.
    getter formatted_content : String?
    def initialize(
      @content : String = "",
      @mime_type : String = "",
      @metadata : Metadata = Metadata.from_json("{}"),
      @extraction_method : ExtractionMethod? = nil,
      @tables : Array(Table) = [] of Table,
      @counts : DocumentCounts = DocumentCounts.from_json("{}"),
      @detected_languages : Array(String)? = nil,
      @detected_language_confidences : Array(LanguageConfidence)? = nil,
      @chunks : Array(Chunk)? = nil,
      @images : Array(ExtractedImage)? = nil,
      @pages : Array(PageContent)? = nil,
      @elements : Array(Element)? = nil,
      @djot_content : DjotContent? = nil,
      @ocr_elements : Array(OcrElement)? = nil,
      @document : DocumentStructure? = nil,
      @extracted_keywords : Array(Keyword)? = nil,
      @quality_score : Float64? = nil,
      @processing_warnings : Array(ProcessingWarning) = [] of ProcessingWarning,
      @annotations : Array(PdfAnnotation)? = nil,
      @children : Array(ArchiveEntry)? = nil,
      @uris : Array(ExtractedUri)? = nil,
      @revisions : Array(DocumentRevision)? = nil,
      @structured_output : JSON::Any? = nil,
      @code_intelligence : JSON::Any? = nil,
      @llm_usage : Array(LlmUsage)? = nil,
      @entities : Array(Entity)? = nil,
      @summary : DocumentSummary? = nil,
      @extraction_confidence : ExtractionConfidence? = nil,
      @translation : Translation? = nil,
      @page_classifications : Array(PageClassification)? = nil,
      @redaction_report : RedactionReport? = nil,
      @formulas : Array(Formula) = [] of Formula,
      @form_fields : Array(PdfFormField) = [] of PdfFormField,
      @formatted_content : String? = nil
    )
    end
  end

  # A single file extracted from an archive.
  #
  # When archives (ZIP, TAR, 7Z, GZIP) are extracted with recursive extraction
  # enabled, each processable file produces its own full `ExtractedDocument`.
  class ArchiveEntry
    include JSON::Serializable
    # Archive-relative file path (e.g. "folder/document.pdf").
    getter path : String = ""
    # Detected MIME type of the file.
    getter mime_type : String = ""
    # Full extraction result for this file.
    getter result : ExtractedDocument = ExtractedDocument.from_json("{}")
    def initialize(
      @path : String = "",
      @mime_type : String = "",
      @result : ExtractedDocument = ExtractedDocument.from_json("{}")
    )
    end
  end

  # A non-fatal warning from a processing pipeline stage.
  #
  # Captures errors from optional features that don't prevent extraction
  # but may indicate degraded results.
  class ProcessingWarning
    include JSON::Serializable
    # The pipeline stage or feature that produced this warning
    # (e.g., "embedding", "chunking", "language_detection", "output_format").
    getter source : String = ""
    # Human-readable description of what went wrong.
    getter message : String = ""
    def initialize(
      @source : String = "",
      @message : String = ""
    )
    end
  end

  # Token usage and cost data for a single LLM call made during extraction.
  #
  # Populated when VLM OCR, structured extraction, or LLM-based embeddings
  # are used. Multiple entries may be present when multiple LLM calls occur
  # within one extraction (e.g. VLM OCR + structured extraction).
  class LlmUsage
    include JSON::Serializable
    # The LLM model identifier (e.g. "openai/gpt-4o", "anthropic/claude-sonnet-4-20250514").
    getter model : String = ""
    # The pipeline stage that triggered this LLM call
    # (e.g. "vlm_ocr", "structured_extraction", "embeddings").
    getter source : String = ""
    # Number of input/prompt tokens consumed.
    getter input_tokens : UInt64?
    # Number of output/completion tokens generated.
    getter output_tokens : UInt64?
    # Total tokens (input + output).
    getter total_tokens : UInt64?
    # Estimated cost in USD based on the provider's published pricing.
    getter estimated_cost : Float64?
    # Why the model stopped generating (e.g. "stop", "length", "content_filter").
    getter finish_reason : String?
    def initialize(
      @model : String = "",
      @source : String = "",
      @input_tokens : UInt64? = nil,
      @output_tokens : UInt64? = nil,
      @total_tokens : UInt64? = nil,
      @estimated_cost : Float64? = nil,
      @finish_reason : String? = nil
    )
    end
  end

  # A text chunk with optional embedding and metadata.
  #
  # Chunks are created when chunking is enabled in `ExtractionConfig`. Each chunk
  # contains the text content, optional embedding vector (if embedding generation
  # is configured), and metadata about its position in the document.
  class Chunk
    include JSON::Serializable
    # The text content of this chunk.
    getter content : String = ""
    # Semantic structural classification of this chunk.
    #
    # Assigned by the heuristic classifier based on content patterns and
    # heading context. Defaults to `ChunkType::Unknown` when no rule matches.
    getter chunk_type : ChunkType = ChunkType::Unknown
    # Optional embedding vector for this chunk.
    #
    # Only populated when `EmbeddingConfig` is provided in chunking configuration.
    # The dimensionality depends on the chosen embedding model.
    getter embedding : Array(Float32)?
    # Metadata about this chunk's position and properties.
    getter metadata : ChunkMetadata = ChunkMetadata.from_json("{}")
    def initialize(
      @content : String = "",
      @chunk_type : ChunkType = ChunkType::Unknown,
      @embedding : Array(Float32)? = nil,
      @metadata : ChunkMetadata = ChunkMetadata.from_json("{}")
    )
    end
  end

  # Heading context for a chunk within a Markdown document.
  #
  # Contains the heading hierarchy from document root to this chunk's section.
  class HeadingContext
    include JSON::Serializable
    # The heading hierarchy from document root to this chunk's section.
    # Index 0 is the outermost (h1), last element is the most specific.
    getter headings : Array(HeadingLevel) = [] of HeadingLevel
    def initialize(
      @headings : Array(HeadingLevel) = [] of HeadingLevel
    )
    end
  end

  # A single heading in the hierarchy.
  class HeadingLevel
    include JSON::Serializable
    # Heading depth (1 = h1, 2 = h2, etc.)
    getter level : UInt8 = 0
    # The text content of the heading.
    getter text : String = ""
    def initialize(
      @level : UInt8 = 0,
      @text : String = ""
    )
    end
  end

  # Metadata about a chunk's position in the original document.
  class ChunkMetadata
    include JSON::Serializable
    # Byte offset where this chunk starts in the original text (UTF-8 valid boundary).
    getter byte_start : UInt64 = 0
    # Byte offset where this chunk ends in the original text (UTF-8 valid boundary).
    getter byte_end : UInt64 = 0
    # Number of tokens in this chunk (if available).
    #
    # This is calculated by the embedding model's tokenizer if embeddings are enabled.
    getter token_count : UInt64?
    # Zero-based index of this chunk in the document.
    getter chunk_index : UInt64 = 0
    # Total number of chunks in the document.
    getter total_chunks : UInt64 = 0
    # First page number this chunk spans (1-indexed).
    #
    # Only populated when page tracking is enabled in extraction configuration.
    getter first_page : UInt32?
    # Last page number this chunk spans (1-indexed, equal to first_page for single-page chunks).
    #
    # Only populated when page tracking is enabled in extraction configuration.
    getter last_page : UInt32?
    # Heading context when using Markdown chunker.
    #
    # Contains the heading hierarchy this chunk falls under.
    # Only populated when `ChunkerType::Markdown` is used.
    getter heading_context : HeadingContext?
    # Flattened heading trail from document root to this chunk's section.
    #
    # Each element is a heading's text, outermost first. Derived from
    # [`heading_context`](Self::heading_context) when present; empty otherwise.
    # Provides a binding-friendly, RAG-shaped breadcrumb without requiring
    # callers to walk the nested [`HeadingContext`] structure.
    getter heading_path : Array(String) = [] of String
    # Indices into `ExtractedDocument.images` for images on pages covered by this chunk.
    #
    # Contains zero-based indices into the top-level `images` collection for every
    # image whose `page_number` falls within `[first_page, last_page]`.
    # Empty when image extraction is disabled or the chunk spans no pages with images.
    getter image_indices : Array(UInt32) = [] of UInt32
    # Ids of the [`DocumentNode`](super::document_structure::DocumentNode)s
    # this chunk was derived from.
    #
    # Joins a chunk back to the structured document tree via
    # [`DocumentNode::id`](super::document_structure::DocumentNode::id).
    # Empty until the node-to-rendered-offset mapping needed to compute the
    # intersection is implemented (tracked under #1294/#1295); this field is
    # the wire-format foundation for that follow-up.
    getter node_ids : Array(String) = [] of String
    # Per-page bounding-box spans this chunk covers, for viewer highlighting (#1295).
    #
    # One entry per page the chunk overlaps, in page order — the first and last entries'
    # `page` fields equal [`first_page`](Self::first_page)/[`last_page`](Self::last_page).
    # Populated whenever page-boundary provenance is available (the same condition under
    # which `first_page`/`last_page` are populated); each entry's `bbox` is additionally
    # populated when the document's structured node tree ([`ExtractedDocument::document`]) is
    # available, as the union of that page's body-layer node bounding boxes found within this
    # chunk. Empty when page-boundary provenance is unavailable (mirrors `first_page`/
    # `last_page` being `None`).
    getter page_spans : Array(PageSpan) = [] of PageSpan
    # Multi-label classification result for this chunk.
    #
    # Populated by the chunk-classification post-processor when
    # [`ExtractionConfig::chunk_classification`](crate::core::config::ExtractionConfig::chunk_classification)
    # is set. A chunk may match zero, one, or many of the configured label
    # definitions. Empty when chunk classification was not configured.
    getter classifications : Array(ClassificationLabel) = [] of ClassificationLabel
    def initialize(
      @byte_start : UInt64 = 0,
      @byte_end : UInt64 = 0,
      @token_count : UInt64? = nil,
      @chunk_index : UInt64 = 0,
      @total_chunks : UInt64 = 0,
      @first_page : UInt32? = nil,
      @last_page : UInt32? = nil,
      @heading_context : HeadingContext? = nil,
      @heading_path : Array(String) = [] of String,
      @image_indices : Array(UInt32) = [] of UInt32,
      @node_ids : Array(String) = [] of String,
      @page_spans : Array(PageSpan) = [] of PageSpan,
      @classifications : Array(ClassificationLabel) = [] of ClassificationLabel
    )
    end
  end

  # A single page covered by a chunk, with an optional bounding box on that page.
  #
  # See [`ChunkMetadata::page_spans`] (#1295) for population semantics.
  class PageSpan
    include JSON::Serializable
    # Page number (1-indexed).
    getter page : UInt32 = 0
    # Bounding box on this page, if known.
    getter bbox : BoundingBox?
    def initialize(
      @page : UInt32 = 0,
      @bbox : BoundingBox? = nil
    )
    end
  end

  # Extracted image from a document.
  #
  # Contains raw image data, metadata, and optional nested OCR results.
  # Raw bytes allow cross-language compatibility - users can convert to
  # PIL.Image (Python), Sharp (Node.js), or other formats as needed.
  class ExtractedImage
    include JSON::Serializable
    # Raw image data (PNG, JPEG, WebP, etc. bytes).
    # Uses `bytes::Bytes` for cheap cloning of large buffers.
    getter data : Array(UInt8) = [] of UInt8
    # Image format (e.g., "jpeg", "png", "webp")
    # Uses Cow<'static, str> to avoid allocation for static literals.
    getter format : String = ""
    # Zero-indexed position of this image in the document/page
    getter image_index : UInt32 = 0
    # Page/slide number where image was found (1-indexed)
    getter page_number : UInt32?
    # Image width in pixels
    getter width : UInt32?
    # Image height in pixels
    getter height : UInt32?
    # Colorspace information (e.g., "RGB", "CMYK", "Gray")
    getter colorspace : String?
    # Bits per color component (e.g., 8, 16)
    getter bits_per_component : UInt32?
    # Whether this image is a mask image
    getter is_mask : Bool = false
    # Optional description of the image
    getter description : String?
    # Nested OCR extraction result (if image was OCRed)
    #
    # When OCR is performed on this image, the result is embedded here
    # rather than in a separate collection, making the relationship explicit.
    getter ocr_result : ExtractedDocument?
    # Bounding box of the image on the page (PDF coordinates: x0=left, y0=bottom, x1=right, y1=top).
    # Only populated for PDF-extracted images when position data is available from the PDF extractor.
    getter bounding_box : BoundingBox?
    # Original source path of the image within the document archive (e.g., "media/image1.png" in DOCX).
    # Used for rendering image references when the binary data is not extracted.
    getter source_path : String?
    # Heuristic classification of what this image likely depicts.
    # `None` if classification was disabled or inconclusive.
    getter image_kind : ImageKind?
    # Confidence score for `image_kind`, in the range 0.0 to 1.0.
    getter kind_confidence : Float32?
    # Identifier shared across images that form a single logical figure
    # (e.g. all raster tiles of one technical drawing). `None` for singletons.
    getter cluster_id : UInt32?
    # VLM-generated caption describing the image, when captioning is configured.
    #
    # Populated by the captioning post-processor
    # (`crates/xberg/src/plugins/processor/builtin/captioning.rs`), which routes
    # each image through `crate::llm::region_extractor::extract_region_with_vlm` in
    # caption mode. `None` when captioning is disabled or the VLM declined to caption.
    getter caption : String?
    # QR codes decoded from this image, when QR detection is enabled.
    #
    # Populated by the QR post-processor (`crates/xberg/src/extractors/qr.rs`) via
    # the pure-Rust `rqrr` decoder. `None` when QR detection is disabled; an empty
    # `Some(vec![])` when detection ran but found nothing.
    getter qr_codes : Array(QrCode)?
    # Base64-encoded copy of `data`; populated when `ImageExtractionConfig::include_data_base64`
    # is `true`. Omitted from JSON by default; use instead of `data` in JSON-only clients.
    getter data_base64 : String?
    def initialize(
      @data : Bytes = [] of UInt8,
      @format : String = "",
      @image_index : UInt32 = 0,
      @page_number : UInt32? = nil,
      @width : UInt32? = nil,
      @height : UInt32? = nil,
      @colorspace : String? = nil,
      @bits_per_component : UInt32? = nil,
      @is_mask : Bool = false,
      @description : String? = nil,
      @ocr_result : ExtractedDocument? = nil,
      @bounding_box : BoundingBox? = nil,
      @source_path : String? = nil,
      @image_kind : ImageKind? = nil,
      @kind_confidence : Float32? = nil,
      @cluster_id : UInt32? = nil,
      @caption : String? = nil,
      @qr_codes : Array(QrCode)? = nil,
      @data_base64 : String? = nil
    )
    end
  end

  # Bounding box coordinates for element positioning.
  class BoundingBox
    include JSON::Serializable
    # Left x-coordinate
    getter x0 : Float64 = 0.0
    # Bottom y-coordinate
    getter y0 : Float64 = 0.0
    # Right x-coordinate
    getter x1 : Float64 = 0.0
    # Top y-coordinate
    getter y1 : Float64 = 0.0
    def initialize(
      @x0 : Float64 = 0.0,
      @y0 : Float64 = 0.0,
      @x1 : Float64 = 0.0,
      @y1 : Float64 = 0.0
    )
    end
  end

  # Metadata for a semantic element.
  class ElementMetadata
    include JSON::Serializable
    # Page number (1-indexed)
    getter page_number : UInt32?
    # Source filename or document name
    getter filename : String?
    # Bounding box coordinates if available
    getter coordinates : BoundingBox?
    # Position index in the element sequence
    getter element_index : UInt64?
    # Additional custom metadata
    getter additional : Hash(String, String) = {} of String => String
    def initialize(
      @page_number : UInt32? = nil,
      @filename : String? = nil,
      @coordinates : BoundingBox? = nil,
      @element_index : UInt64? = nil,
      @additional : Hash(String, String) = {} of String => String
    )
    end
  end

  # Semantic element extracted from document.
  #
  # Represents a logical unit of content with semantic classification,
  # unique identifier, and metadata for tracking origin and position.
  class Element
    include JSON::Serializable
    # Semantic type of this element
    getter element_type : ElementType = ElementType::Title
    # Text content of the element
    getter text : String = ""
    # Metadata about the element
    getter metadata : ElementMetadata = ElementMetadata.from_json("{}")
    def initialize(
      @element_type : ElementType = ElementType::Title,
      @text : String = "",
      @metadata : ElementMetadata = ElementMetadata.from_json("{}")
    )
    end
  end

  # A form field extracted from a PDF's AcroForm or XFA structure.
  #
  # Populated by the PDF extractor when [`PdfConfig::extract_form_fields`] is
  # enabled and the document is a fillable form. Supports both AcroForm (standard)
  # and XFA (XML Forms Architecture) layers. When both are present, AcroForm fields
  # take priority (canonical fallback per PDF spec), and XFA-only fields are appended.
  # The collection is empty for non-form PDFs and for non-PDF formats.
  #
  # [`PdfConfig::extract_form_fields`]: crate::core::config::PdfConfig::extract_form_fields
  class PdfFormField
    include JSON::Serializable
    # Partial field name (the leaf name within the field hierarchy).
    getter name : String = ""
    # Fully-qualified field name (dotted path from the form root).
    getter full_name : String = ""
    # Classified field type.
    getter field_type : FormFieldType = FormFieldType::Unknown
    # Current field value, if any.
    getter value : String?
    # Default field value, if any.
    getter default_value : String?
    # Raw field-flags bitmask (read-only, required, multiline, …).
    getter flags : UInt32 = 0
    # 1-indexed page the field's widget appears on. Currently always `None` for
    # AcroForm fields; page assignment is a deferred enhancement requiring spatial
    # analysis of widget annotations per page.
    getter page : UInt32?
    # Widget bounding box on its page, if known.
    getter bbox : BoundingBox?
    # Maximum input length for text fields, if specified.
    getter max_length : UInt32?
    # Tooltip / alternate field description, if present.
    getter tooltip : String?
    def initialize(
      @name : String = "",
      @full_name : String = "",
      @field_type : FormFieldType = FormFieldType::Unknown,
      @value : String? = nil,
      @default_value : String? = nil,
      @flags : UInt32 = 0,
      @page : UInt32? = nil,
      @bbox : BoundingBox? = nil,
      @max_length : UInt32? = nil,
      @tooltip : String? = nil
    )
    end
  end

  # Excel workbook representation.
  #
  # Contains all sheets from an Excel file (.xlsx, .xls, etc.) with
  # extracted content and metadata.
  class ExcelWorkbook
    include JSON::Serializable
    # All sheets in the workbook
    getter sheets : Array(ExcelSheet) = [] of ExcelSheet
    # Workbook-level metadata (author, creation date, etc.)
    getter metadata : Hash(String, String) = {} of String => String
    # Collaborative-edit revision headers from `xl/revisions/revisionHeaders.xml`.
    #
    # Populated for legacy shared-workbook `.xlsx` files that contain the
    # `xl/revisions/` directory. Each `<header>` element maps to one
    # `DocumentRevision { kind: FormatChange }` carrying the header's `guid`
    # (→ `revision_id`), `userName` (→ `author`), and `dateTime` (→ `timestamp`).
    # `anchor` and `delta` are `None`/empty for v1 (per-cell log parsing is a
    # follow-up). `None` when `xl/revisions/revisionHeaders.xml` is absent.
    getter revisions : Array(DocumentRevision)?
    def initialize(
      @sheets : Array(ExcelSheet) = [] of ExcelSheet,
      @metadata : Hash(String, String) = {} of String => String,
      @revisions : Array(DocumentRevision)? = nil
    )
    end
  end

  # Single Excel worksheet.
  #
  # Represents one sheet from an Excel workbook with its content
  # converted to Markdown format and dimensional statistics.
  class ExcelSheet
    include JSON::Serializable
    # Sheet name as it appears in Excel
    getter name : String = ""
    # Sheet content converted to Markdown tables
    getter markdown : String = ""
    # Number of rows
    getter row_count : UInt64 = 0
    # Number of columns
    getter col_count : UInt64 = 0
    # Total number of non-empty cells
    getter cell_count : UInt64 = 0
    # Pre-extracted table cells (2D vector of cell values)
    # Populated during markdown generation to avoid re-parsing markdown.
    # None for empty sheets.
    getter table_cells : Array(Array(String))?
    def initialize(
      @name : String = "",
      @markdown : String = "",
      @row_count : UInt64 = 0,
      @col_count : UInt64 = 0,
      @cell_count : UInt64 = 0,
      @table_cells : Array(Array(String))? = nil
    )
    end
  end

  # XML extraction result.
  #
  # Contains extracted text content from XML files along with
  # structural statistics about the XML document.
  class XmlExtractionResult
    include JSON::Serializable
    # Extracted text content (XML structure filtered out)
    getter content : String = ""
    # Total number of XML elements processed
    getter element_count : UInt64 = 0
    # List of unique element names found (sorted)
    getter unique_elements : Array(String) = [] of String
    def initialize(
      @content : String = "",
      @element_count : UInt64 = 0,
      @unique_elements : Array(String) = [] of String
    )
    end
  end

  # Plain text and Markdown extraction result.
  #
  # Contains the extracted text along with statistics and,
  # for Markdown files, structural elements like headers and links.
  class TextExtractionResult
    include JSON::Serializable
    # Extracted text content
    getter content : String = ""
    # Number of lines
    getter line_count : UInt64 = 0
    # Number of words
    getter word_count : UInt64 = 0
    # Number of characters
    getter character_count : UInt64 = 0
    # Markdown headers (text only, Markdown files only)
    getter headers : Array(String)?
    def initialize(
      @content : String = "",
      @line_count : UInt64 = 0,
      @word_count : UInt64 = 0,
      @character_count : UInt64 = 0,
      @headers : Array(String)? = nil
    )
    end
  end

  # PowerPoint (PPTX) extraction result.
  #
  # Contains extracted slide content, metadata, and embedded images/tables.
  class PptxExtractionResult
    include JSON::Serializable
    # Extracted text content from all slides
    getter content : String = ""
    # Presentation metadata
    getter metadata : PptxMetadata = PptxMetadata.from_json("{}")
    # Total number of slides
    getter slide_count : UInt64 = 0
    # Total number of embedded images
    getter image_count : UInt64 = 0
    # Total number of tables
    getter table_count : UInt64 = 0
    # Extracted images from the presentation
    getter images : Array(ExtractedImage) = [] of ExtractedImage
    # Slide structure with boundaries (when page tracking is enabled)
    getter page_structure : PageStructure?
    # Per-slide content (when page tracking is enabled)
    getter page_contents : Array(PageContent)?
    # Structured document representation
    getter document : DocumentStructure?
    # Office metadata extracted from docProps/core.xml and docProps/app.xml.
    #
    # Contains keys like "title", "author", "created_by", "subject", "keywords",
    # "modified_by", "created_at", "modified_at", etc.
    getter office_metadata : Hash(String, String) = {} of String => String
    # Slide comments as revisions.
    #
    # Each `<p:cm>` element in `ppt/comments/comment{N}.xml` becomes a
    # `DocumentRevision { kind: Comment }` with author (resolved from
    # `ppt/commentAuthors.xml`), ISO-8601 timestamp, and
    # `RevisionAnchor::Slide { index }`. `None` when no comment XML parts exist.
    getter revisions : Array(DocumentRevision)?
    def initialize(
      @content : String = "",
      @metadata : PptxMetadata = PptxMetadata.from_json("{}"),
      @slide_count : UInt64 = 0,
      @image_count : UInt64 = 0,
      @table_count : UInt64 = 0,
      @images : Array(ExtractedImage) = [] of ExtractedImage,
      @page_structure : PageStructure? = nil,
      @page_contents : Array(PageContent)? = nil,
      @document : DocumentStructure? = nil,
      @office_metadata : Hash(String, String) = {} of String => String,
      @revisions : Array(DocumentRevision)? = nil
    )
    end
  end

  # Email extraction result.
  #
  # Complete representation of an extracted email message (.eml or .msg)
  # including headers, body content, and attachments.
  class EmailExtractionResult
    include JSON::Serializable
    # Email subject line
    getter subject : String?
    # Sender email address
    getter from_email : String?
    # Primary recipient email addresses
    getter to_emails : Array(String) = [] of String
    # CC recipient email addresses
    getter cc_emails : Array(String) = [] of String
    # BCC recipient email addresses
    getter bcc_emails : Array(String) = [] of String
    # Email date/timestamp
    getter date : String?
    # Message-ID header value
    getter message_id : String?
    # Plain text version of the email body
    getter plain_text : String?
    # HTML version of the email body
    getter html_content : String?
    # Cleaned/processed text content. Aliased as `cleaned_text` for back-compat.
    getter content : String = ""
    # List of email attachments
    getter attachments : Array(EmailAttachment) = [] of EmailAttachment
    # Additional email headers and metadata
    getter metadata : Hash(String, String) = {} of String => String
    def initialize(
      @subject : String? = nil,
      @from_email : String? = nil,
      @to_emails : Array(String) = [] of String,
      @cc_emails : Array(String) = [] of String,
      @bcc_emails : Array(String) = [] of String,
      @date : String? = nil,
      @message_id : String? = nil,
      @plain_text : String? = nil,
      @html_content : String? = nil,
      @content : String = "",
      @attachments : Array(EmailAttachment) = [] of EmailAttachment,
      @metadata : Hash(String, String) = {} of String => String
    )
    end
  end

  # Email attachment representation.
  #
  # Contains metadata and optionally the content of an email attachment.
  class EmailAttachment
    include JSON::Serializable
    # Attachment name (from Content-Disposition header)
    getter name : String?
    # Filename of the attachment
    getter filename : String?
    # MIME type of the attachment
    getter mime_type : String?
    # Size in bytes
    getter size : UInt64?
    # Whether this attachment is an image
    getter is_image : Bool = false
    # Attachment data (if extracted).
    # Uses `bytes::Bytes` for cheap cloning of large buffers.
    getter data : Array(UInt8)?
    def initialize(
      @name : String? = nil,
      @filename : String? = nil,
      @mime_type : String? = nil,
      @size : UInt64? = nil,
      @is_image : Bool = false,
      @data : Bytes? = nil
    )
    end
  end

  # OCR extraction result.
  #
  # Result of performing OCR on an image or scanned document,
  # including recognized text and detected tables.
  class OcrExtractionResult
    include JSON::Serializable
    # Recognized text content
    getter content : String = ""
    # Original MIME type of the processed image
    getter mime_type : String = ""
    # OCR processing metadata (confidence scores, language, etc.)
    getter metadata : Hash(String, JSON::Any) = {} of String => JSON::Any
    # Tables detected and extracted via OCR
    getter tables : Array(OcrTable) = [] of OcrTable
    # Structured OCR elements with bounding boxes and confidence scores.
    # Available when TSV output is requested or table detection is enabled.
    getter ocr_elements : Array(OcrElement)?
    def initialize(
      @content : String = "",
      @mime_type : String = "",
      @metadata : Hash(String, JSON::Any) = {} of String => JSON::Any,
      @tables : Array(OcrTable) = [] of OcrTable,
      @ocr_elements : Array(OcrElement)? = nil
    )
    end
  end

  # Table detected via OCR.
  #
  # Represents a table structure recognized during OCR processing.
  class OcrTable
    include JSON::Serializable
    # Table cells as a 2D vector (rows × columns)
    getter cells : Array(Array(String)) = [] of Array(String)
    # Markdown representation of the table
    getter markdown : String = ""
    # Page number where the table was found (1-indexed)
    getter page_number : UInt32 = 0
    # Bounding box of the table in pixel coordinates (from OCR word positions).
    getter bounding_box : OcrTableBoundingBox?
    def initialize(
      @cells : Array(Array(String)) = [] of Array(String),
      @markdown : String = "",
      @page_number : UInt32 = 0,
      @bounding_box : OcrTableBoundingBox? = nil
    )
    end
  end

  # Bounding box for an OCR-detected table in pixel coordinates.
  class OcrTableBoundingBox
    include JSON::Serializable
    # Left x-coordinate (pixels)
    getter left : UInt32 = 0
    # Top y-coordinate (pixels)
    getter top : UInt32 = 0
    # Right x-coordinate (pixels)
    getter right : UInt32 = 0
    # Bottom y-coordinate (pixels)
    getter bottom : UInt32 = 0
    def initialize(
      @left : UInt32 = 0,
      @top : UInt32 = 0,
      @right : UInt32 = 0,
      @bottom : UInt32 = 0
    )
    end
  end

  # Image preprocessing configuration for OCR.
  #
  # These settings control how images are preprocessed before OCR to improve
  # text recognition quality. Different preprocessing strategies work better
  # for different document types.
  class ImagePreprocessingConfig
    include JSON::Serializable
    # Target DPI for the image (300 is standard, 600 for small text).
    getter target_dpi : Int32 = 300
    # Auto-detect and correct image rotation.
    getter auto_rotate : Bool = false
    # Correct skew (tilted images).
    getter deskew : Bool = true
    # Remove noise from the image.
    getter denoise : Bool = false
    # Enhance contrast for better text visibility.
    getter contrast_enhance : Bool = false
    # Binarization method: "otsu", "sauvola", "adaptive".
    getter binarization_method : String = "otsu"
    # Invert colors (white text on black → black on white).
    getter invert_colors : Bool = false
    def initialize(
      @target_dpi : Int32 = 300,
      @auto_rotate : Bool = false,
      @deskew : Bool = true,
      @denoise : Bool = false,
      @contrast_enhance : Bool = false,
      @binarization_method : String = "otsu",
      @invert_colors : Bool = false
    )
    end
  end

  # Tesseract OCR configuration.
  #
  # Provides fine-grained control over Tesseract OCR engine parameters.
  # Most users can use the defaults, but these settings allow optimization
  # for specific document types (invoices, handwriting, etc.).
  class TesseractConfig
    include JSON::Serializable
    # Language code(s) for OCR recognition.
    # Accepts either a single language code ("eng") or a list (["eng", "deu"]).
    # For Tesseract backend, languages are joined with "+".
    getter language : Array(String) = [] of String
    # Page Segmentation Mode (0-13).
    #
    # Common values:
    # - 3: Fully automatic page segmentation (native default)
    # - 6: Assume a single uniform block of text (WASM default — avoids layout-analysis hang)
    # - 11: Sparse text with no particular order
    getter psm : Int32 = 3
    # Output format ("text" or "markdown")
    getter output_format : String = "markdown"
    # OCR Engine Mode (0-3).
    #
    # - 0: Legacy engine only
    # - 1: Neural nets (LSTM) only (usually best)
    # - 2: Legacy + LSTM
    # - 3: Default (based on what's available)
    getter oem : Int32 = 3
    # Minimum confidence threshold (0.0-100.0).
    #
    # Words with confidence below this threshold may be rejected or flagged.
    getter min_confidence : Float64 = 0.0
    # Image preprocessing configuration.
    #
    # Controls how images are preprocessed before OCR. Can significantly
    # improve quality for scanned documents or low-quality images.
    getter preprocessing : ImagePreprocessingConfig?
    # Enable automatic table detection and reconstruction
    getter enable_table_detection : Bool = true
    # Minimum confidence threshold for table detection (0.0-1.0)
    getter table_min_confidence : Float64 = 0.0
    # Column threshold for table detection (pixels)
    getter table_column_threshold : Int32 = 50
    # Row threshold ratio for table detection (0.0-1.0)
    getter table_row_threshold_ratio : Float64 = 0.5
    # Enable OCR result caching
    getter use_cache : Bool = true
    # Use pre-adapted templates for character classification
    getter classify_use_pre_adapted_templates : Bool = true
    # Enable N-gram language model
    getter language_model_ngram_on : Bool = false
    # Don't reject good words during block-level processing
    getter tessedit_dont_blkrej_good_wds : Bool = true
    # Don't reject good words during row-level processing
    getter tessedit_dont_rowrej_good_wds : Bool = true
    # Enable dictionary correction
    getter tessedit_enable_dict_correction : Bool = true
    # Whitelist of allowed characters (empty = all allowed)
    getter tessedit_char_whitelist : String = ""
    # Blacklist of forbidden characters (empty = none forbidden)
    getter tessedit_char_blacklist : String = ""
    # Use primary language params model
    getter tessedit_use_primary_params_model : Bool = true
    # Variable-width space detection
    getter textord_space_size_is_variable : Bool = true
    # Use adaptive thresholding method
    getter thresholding_method : Bool = false
    def initialize(
      @language : Array(String) = [] of String,
      @psm : Int32 = 3,
      @output_format : String = "markdown",
      @oem : Int32 = 3,
      @min_confidence : Float64 = 0.0,
      @preprocessing : ImagePreprocessingConfig? = nil,
      @enable_table_detection : Bool = true,
      @table_min_confidence : Float64 = 0.0,
      @table_column_threshold : Int32 = 50,
      @table_row_threshold_ratio : Float64 = 0.5,
      @use_cache : Bool = true,
      @classify_use_pre_adapted_templates : Bool = true,
      @language_model_ngram_on : Bool = false,
      @tessedit_dont_blkrej_good_wds : Bool = true,
      @tessedit_dont_rowrej_good_wds : Bool = true,
      @tessedit_enable_dict_correction : Bool = true,
      @tessedit_char_whitelist : String = "",
      @tessedit_char_blacklist : String = "",
      @tessedit_use_primary_params_model : Bool = true,
      @textord_space_size_is_variable : Bool = true,
      @thresholding_method : Bool = false
    )
    end
  end

  # Image preprocessing metadata.
  #
  # Tracks the transformations applied to an image during OCR preprocessing,
  # including DPI normalization, resizing, and resampling.
  class ImagePreprocessingMetadata
    include JSON::Serializable
    # Target DPI from configuration
    getter target_dpi : Int32 = 0
    # Scaling factor applied to the image
    getter scale_factor : Float64 = 0.0
    # Whether DPI was auto-adjusted based on content
    getter auto_adjusted : Bool = false
    # Final DPI after processing
    getter final_dpi : Int32 = 0
    # Resampling algorithm used ("LANCZOS3", "CATMULLROM", etc.)
    getter resample_method : String = ""
    # Whether dimensions were clamped to max_image_dimension
    getter dimension_clamped : Bool = false
    # Calculated optimal DPI (if auto_adjust_dpi enabled)
    getter calculated_dpi : Int32?
    # Whether resize was skipped (dimensions already optimal)
    getter skipped_resize : Bool = false
    # Error message if resize failed
    getter resize_error : String?
    def initialize(
      @target_dpi : Int32 = 0,
      @scale_factor : Float64 = 0.0,
      @auto_adjusted : Bool = false,
      @final_dpi : Int32 = 0,
      @resample_method : String = "",
      @dimension_clamped : Bool = false,
      @calculated_dpi : Int32? = nil,
      @skipped_resize : Bool = false,
      @resize_error : String? = nil
    )
    end
  end

  # A mathematical formula detected and recognized in a document.
  #
  # Populated by the layout-guided formula pipeline: regions classified as
  # `LayoutClass::Formula` are routed to the formula OCR task, which returns the
  # LaTeX source for the region. The field is always present on
  # [`ExtractedDocument`](super::extraction::ExtractedDocument) but only populated
  # when the `layout-detection` feature is active and the document contains
  # formula regions.
  class Formula
    include JSON::Serializable
    # LaTeX source of the recognized formula, without surrounding `$$` delimiters.
    #
    # This field contains the raw LaTeX code as produced by the OCR backend.
    # To render the formula in Markdown or other formats, wrap with `$$..$$` delimiters as needed.
    getter latex : String = ""
    # Bounding box of the formula region on its page, in rendered-image pixel coordinates.
    #
    # The coordinates are in the space of the OCR-rendered page image at the OCR DPI
    # (typically 300 DPI). These coordinates are NOT comparable to bounding boxes from
    # native PDF text extraction, which use PDF point coordinates.
    getter bbox : BoundingBox = BoundingBox.from_json("{}")
    # 1-indexed page number the formula appears on in the document.
    #
    # This is set by the extraction pipeline based on which page the formula was found on.
    getter page : UInt32 = 0
    def initialize(
      @latex : String = "",
      @bbox : BoundingBox = BoundingBox.from_json("{}"),
      @page : UInt32 = 0
    )
    end
  end

  # Code-format metadata: the structural chunks produced by tree-sitter parsing.
  #
  # Wrapped by [`FormatMetadata::Code`]. Kept as a named struct (rather than an inline
  # enum-variant body) so serde can tag it under internal tagging and utoipa can emit a
  # referenceable `CodeMetadata` component in the OpenAPI schema.
  class CodeMetadata
    include JSON::Serializable
    # Structural code chunks (function/class/module boundaries).
    getter chunks : Array(CodeChunkInfo) = [] of CodeChunkInfo
    # Hierarchical key/value data tree extracted from data-format source
    # (JSON, YAML, TOML, XML, CSV, etc.), when data extraction was enabled.
    getter data : CodeDataNode?
    def initialize(
      @chunks : Array(CodeChunkInfo) = [] of CodeChunkInfo,
      @data : CodeDataNode? = nil
    )
    end
  end

  # A single structurally-meaningful code chunk produced by tree-sitter parsing.
  #
  # Purpose-built payload owned by xberg — deliberately does not expose the upstream
  # `tree_sitter_language_pack` types, so binding generators never need to resolve an
  # external crate's types across FFI/language boundaries.
  class CodeChunkInfo
    include JSON::Serializable
    # The raw source text of this chunk.
    getter text : String = ""
    # Hierarchical path of enclosing structural items (e.g. `["MyClass", "my_method"]`).
    getter context_path : Array(String) = [] of String
    # Tree-sitter node kinds that appear at the top level of this chunk (e.g.
    # `"function_definition"`, `"class_definition"`).
    getter node_types : Array(String) = [] of String
    # Inclusive start byte offset of this chunk in the original source.
    getter byte_start : UInt64 = 0
    # Exclusive end byte offset of this chunk in the original source.
    getter byte_end : UInt64 = 0
    def initialize(
      @text : String = "",
      @context_path : Array(String) = [] of String,
      @node_types : Array(String) = [] of String,
      @byte_start : UInt64 = 0,
      @byte_end : UInt64 = 0
    )
    end
  end

  # An XML-style attribute attached to an [`Element`](CodeDataNodeKind::Element) node.
  #
  # Populated only for `CodeDataNodeKind::Element`; always empty for `KeyValue` and
  # `Sequence` nodes.
  class CodeDataAttribute
    include JSON::Serializable
    # Attribute name (e.g. `"class"`, `"href"`).
    getter name : String = ""
    # Attribute value as a raw string (quotes stripped).
    getter value : String = ""
    # Inclusive start byte offset of the `name="value"` attribute token.
    getter byte_start : UInt64 = 0
    # Exclusive end byte offset of the `name="value"` attribute token.
    getter byte_end : UInt64 = 0
    def initialize(
      @name : String = "",
      @value : String = "",
      @byte_start : UInt64 = 0,
      @byte_end : UInt64 = 0
    )
    end
  end

  # A node in the hierarchical data tree produced by data-format extraction.
  #
  # Purpose-built payload owned by xberg — mirrors
  # `tree_sitter_language_pack::DataNode` but flattens its `Span` down to plain byte
  # offsets, so binding generators never need to resolve an external crate's types
  # across FFI/language boundaries.
  class CodeDataNode
    include JSON::Serializable
    # Whether this node is a key/value pair, XML element, or sequence item.
    getter kind : CodeDataNodeKind = CodeDataNodeKind::KeyValue
    # Key, attribute name, tag name, or positional index (`"0"`, `"1"`, …).
    # `None` at the document root.
    getter key : String?
    # Leaf scalar value, if any. `None` for containers (objects, arrays, XML
    # elements with child elements).
    getter value : String?
    # Attributes on element-shape nodes (XML `STag` attributes). Empty for all
    # other kinds.
    getter attributes : Array(CodeDataAttribute) = [] of CodeDataAttribute
    # Children for nested containers and XML element bodies.
    getter children : Array(CodeDataNode) = [] of CodeDataNode
    # Inclusive start byte offset of this node in the original source.
    getter byte_start : UInt64 = 0
    # Exclusive end byte offset of this node in the original source.
    getter byte_end : UInt64 = 0
    def initialize(
      @kind : CodeDataNodeKind = CodeDataNodeKind::KeyValue,
      @key : String? = nil,
      @value : String? = nil,
      @attributes : Array(CodeDataAttribute) = [] of CodeDataAttribute,
      @children : Array(CodeDataNode) = [] of CodeDataNode,
      @byte_start : UInt64 = 0,
      @byte_end : UInt64 = 0
    )
    end
  end

  # Extraction result metadata.
  #
  # Contains common fields applicable to all formats, format-specific metadata
  # via a discriminated union, and additional custom fields from postprocessors.
  class Metadata
    include JSON::Serializable
    # Document title
    getter title : String?
    # Document subject or description
    getter subject : String?
    # Primary author(s) - always Vec for consistency
    getter authors : Array(String)?
    # Keywords/tags - always Vec for consistency
    getter keywords : Array(String)?
    # Primary language (ISO 639 code)
    getter language : String?
    # Creation timestamp (ISO 8601 format)
    getter created_at : String?
    # Last modification timestamp (ISO 8601 format)
    getter modified_at : String?
    # User who created the document
    getter created_by : String?
    # User who last modified the document
    getter modified_by : String?
    # Page/slide/sheet structure with boundaries
    getter pages : PageStructure?
    # Format-specific metadata (discriminated union)
    #
    # Contains detailed metadata specific to the document format.
    # Serialized as a nested `"format"` object with a `format_type` discriminator field.
    getter format : FormatMetadata?
    # Image preprocessing metadata (when OCR preprocessing was applied)
    getter image_preprocessing : ImagePreprocessingMetadata?
    # JSON schema (for structured data extraction)
    getter json_schema : JSON::Any?
    # Error metadata (for batch operations)
    getter error : ErrorMetadata?
    # Extraction duration in milliseconds (for benchmarking).
    #
    # This field is populated by batch extraction to provide per-file timing
    # information. It's `None` for single-file extraction (which uses external timing).
    getter extraction_duration_ms : UInt64?
    # Document category (from frontmatter or classification).
    getter category : String?
    # Document tags (from frontmatter).
    getter tags : Array(String)?
    # Document version string (from frontmatter).
    getter document_version : String?
    # Abstract or summary text (from frontmatter).
    getter abstract_text : String?
    # Output format identifier (e.g., "markdown", "html", "text").
    #
    # Set by the output format pipeline stage when format conversion is applied.
    # Previously stored in `metadata.additional["output_format"]`.
    getter output_format : String?
    # Whether OCR was used during extraction.
    #
    # Set to `true` whenever the extraction pipeline ran an OCR backend
    # (Tesseract, PaddleOCR, VLM, etc.) and used that output as the primary
    # or fallback text. `false` means native text extraction was used exclusively.
    getter ocr_used : Bool = false
    # Additional custom fields from postprocessors.
    #
    # Serialized as a nested `"additional"` object (not flattened at root level).
    # Uses `Cow<'static, str>` keys so static string keys avoid allocation.
    getter additional : Hash(String, JSON::Any) = {} of String => JSON::Any
    def initialize(
      @title : String? = nil,
      @subject : String? = nil,
      @authors : Array(String)? = nil,
      @keywords : Array(String)? = nil,
      @language : String? = nil,
      @created_at : String? = nil,
      @modified_at : String? = nil,
      @created_by : String? = nil,
      @modified_by : String? = nil,
      @pages : PageStructure? = nil,
      @format : FormatMetadata? = nil,
      @image_preprocessing : ImagePreprocessingMetadata? = nil,
      @json_schema : JSON::Any? = nil,
      @error : ErrorMetadata? = nil,
      @extraction_duration_ms : UInt64? = nil,
      @category : String? = nil,
      @tags : Array(String)? = nil,
      @document_version : String? = nil,
      @abstract_text : String? = nil,
      @output_format : String? = nil,
      @ocr_used : Bool = false,
      @additional : Hash(String, JSON::Any) = {} of String => JSON::Any
    )
    end
  end

  # Excel/spreadsheet format metadata.
  #
  # Identifies the document as a spreadsheet source via the `FormatMetadata::Excel`
  # discriminant. Sheet count and sheet names are stored inside this struct.
  class ExcelMetadata
    include JSON::Serializable
    # Number of sheets in the workbook.
    getter sheet_count : UInt32?
    # Names of all sheets in the workbook.
    getter sheet_names : Array(String)?
    def initialize(
      @sheet_count : UInt32? = nil,
      @sheet_names : Array(String)? = nil
    )
    end
  end

  # Email metadata extracted from .eml and .msg files.
  #
  # Includes sender/recipient information, message ID, and attachment list.
  class EmailMetadata
    include JSON::Serializable
    # Sender's email address
    getter from_email : String?
    # Sender's display name
    getter from_name : String?
    # Primary recipients
    getter to_emails : Array(String) = [] of String
    # CC recipients
    getter cc_emails : Array(String) = [] of String
    # BCC recipients
    getter bcc_emails : Array(String) = [] of String
    # Message-ID header value
    getter message_id : String?
    # List of attachment filenames
    getter attachments : Array(String) = [] of String
    def initialize(
      @from_email : String? = nil,
      @from_name : String? = nil,
      @to_emails : Array(String) = [] of String,
      @cc_emails : Array(String) = [] of String,
      @bcc_emails : Array(String) = [] of String,
      @message_id : String? = nil,
      @attachments : Array(String) = [] of String
    )
    end
  end

  # Archive (ZIP/TAR/7Z) metadata.
  #
  # Extracted from compressed archive files containing file lists and size information.
  class ArchiveMetadata
    include JSON::Serializable
    # Archive format ("ZIP", "TAR", "7Z", etc.)
    getter format : String = ""
    # Total number of files in the archive
    getter file_count : UInt32 = 0
    # List of file paths within the archive
    getter file_list : Array(String) = [] of String
    # Total uncompressed size in bytes
    getter total_size : UInt64 = 0
    # Compressed size in bytes (if available)
    getter compressed_size : UInt64?
    def initialize(
      @format : String = "",
      @file_count : UInt32 = 0,
      @file_list : Array(String) = [] of String,
      @total_size : UInt64 = 0,
      @compressed_size : UInt64? = nil
    )
    end
  end

  # Image metadata extracted from image files.
  #
  # Includes dimensions, format, and EXIF data.
  class ImageMetadata
    include JSON::Serializable
    # Image width in pixels
    getter width : UInt32 = 0
    # Image height in pixels
    getter height : UInt32 = 0
    # Image format (e.g., "PNG", "JPEG", "TIFF")
    getter format : String = ""
    # EXIF metadata tags
    getter exif : Hash(String, String) = {} of String => String
    def initialize(
      @width : UInt32 = 0,
      @height : UInt32 = 0,
      @format : String = "",
      @exif : Hash(String, String) = {} of String => String
    )
    end
  end

  # XML metadata extracted during XML parsing.
  #
  # Provides statistics about XML document structure.
  class XmlMetadata
    include JSON::Serializable
    # Total number of XML elements processed
    getter element_count : UInt32 = 0
    # List of unique element tag names (sorted)
    getter unique_elements : Array(String) = [] of String
    def initialize(
      @element_count : UInt32 = 0,
      @unique_elements : Array(String) = [] of String
    )
    end
  end

  # Text/Markdown metadata.
  #
  # Extracted from plain text and Markdown files. Includes word counts and,
  # for Markdown, structural elements like headers and links.
  class TextMetadata
    include JSON::Serializable
    # Number of lines in the document
    getter line_count : UInt32 = 0
    # Number of words
    getter word_count : UInt32 = 0
    # Number of characters
    getter character_count : UInt32 = 0
    # Markdown headers (headings text only, for Markdown files)
    getter headers : Array(String)?
    def initialize(
      @line_count : UInt32 = 0,
      @word_count : UInt32 = 0,
      @character_count : UInt32 = 0,
      @headers : Array(String)? = nil
    )
    end
  end

  # Header/heading element metadata.
  class HeaderMetadata
    include JSON::Serializable
    # Header level: 1 (h1) through 6 (h6)
    getter level : UInt8 = 0
    # Normalized text content of the header
    getter text : String = ""
    # HTML id attribute if present
    getter id : String?
    # Document tree depth at the header element
    getter depth : UInt32 = 0
    # Byte offset in original HTML document
    getter html_offset : UInt32 = 0
    def initialize(
      @level : UInt8 = 0,
      @text : String = "",
      @id : String? = nil,
      @depth : UInt32 = 0,
      @html_offset : UInt32 = 0
    )
    end
  end

  # Link element metadata.
  class LinkMetadata
    include JSON::Serializable
    # The href URL value
    getter href : String = ""
    # Link text content (normalized)
    getter text : String = ""
    # Optional title attribute
    getter title : String?
    # Link type classification
    getter link_type : LinkType = LinkType::Anchor
    # Rel attribute values
    getter rel : Array(String) = [] of String
    def initialize(
      @href : String = "",
      @text : String = "",
      @title : String? = nil,
      @link_type : LinkType = LinkType::Anchor,
      @rel : Array(String) = [] of String
    )
    end
  end

  # Image element metadata.
  class ImageMetadataType
    include JSON::Serializable
    # Image source (URL, data URI, or SVG content)
    getter src : String = ""
    # Alternative text from alt attribute
    getter alt : String?
    # Title attribute
    getter title : String?
    # Image type classification
    @[JSON::Field(converter: Xberg::ImageTypeConverter)]
    getter image_type : ImageType = ImageType::DataUri
    def initialize(
      @src : String = "",
      @alt : String? = nil,
      @title : String? = nil,
      @image_type : ImageType = ImageType::DataUri
    )
    end
  end

  # Structured data (Schema.org, microdata, RDFa) block.
  class StructuredData
    include JSON::Serializable
    # Type of structured data
    @[JSON::Field(converter: Xberg::StructuredDataTypeConverter)]
    getter data_type : StructuredDataType = StructuredDataType::JsonLd
    # Raw JSON string representation
    getter raw_json : String = ""
    # Schema type if detectable (e.g., "Article", "Event", "Product")
    getter schema_type : String?
    def initialize(
      @data_type : StructuredDataType = StructuredDataType::JsonLd,
      @raw_json : String = "",
      @schema_type : String? = nil
    )
    end
  end

  # HTML metadata extracted from HTML documents.
  #
  # Includes document-level metadata, Open Graph data, Twitter Card metadata,
  # and extracted structural elements (headers, links, images, structured data).
  class HtmlMetadata
    include JSON::Serializable
    # Document title from `<title>` tag
    getter title : String?
    # Document description from `<meta name="description">` tag
    getter description : String?
    # Document keywords from `<meta name="keywords">` tag, split on commas
    getter keywords : Array(String) = [] of String
    # Document author from `<meta name="author">` tag
    getter author : String?
    # Canonical URL from `<link rel="canonical">` tag
    getter canonical_url : String?
    # Base URL from `<base href="">` tag for resolving relative URLs
    getter base_href : String?
    # Document language from `lang` attribute
    getter language : String?
    # Document text direction from `dir` attribute
    @[JSON::Field(converter: Xberg::TextDirectionConverter)]
    getter text_direction : TextDirection?
    # Open Graph metadata (og:* properties) for social media
    # Keys like "title", "description", "image", "url", etc.
    getter open_graph : Hash(String, String) = {} of String => String
    # Twitter Card metadata (twitter:* properties)
    # Keys like "card", "site", "creator", "title", "description", "image", etc.
    getter twitter_card : Hash(String, String) = {} of String => String
    # Additional meta tags not covered by specific fields
    # Keys are meta name/property attributes, values are content
    getter meta_tags : Hash(String, String) = {} of String => String
    # Extracted header elements with hierarchy
    getter headers : Array(HeaderMetadata) = [] of HeaderMetadata
    # Extracted hyperlinks with type classification
    getter links : Array(LinkMetadata) = [] of LinkMetadata
    # Extracted images with source and dimensions
    getter images : Array(ImageMetadataType) = [] of ImageMetadataType
    # Extracted structured data blocks
    getter structured_data : Array(StructuredData) = [] of StructuredData
    def initialize(
      @title : String? = nil,
      @description : String? = nil,
      @keywords : Array(String) = [] of String,
      @author : String? = nil,
      @canonical_url : String? = nil,
      @base_href : String? = nil,
      @language : String? = nil,
      @text_direction : TextDirection? = nil,
      @open_graph : Hash(String, String) = {} of String => String,
      @twitter_card : Hash(String, String) = {} of String => String,
      @meta_tags : Hash(String, String) = {} of String => String,
      @headers : Array(HeaderMetadata) = [] of HeaderMetadata,
      @links : Array(LinkMetadata) = [] of LinkMetadata,
      @images : Array(ImageMetadataType) = [] of ImageMetadataType,
      @structured_data : Array(StructuredData) = [] of StructuredData
    )
    end
  end

  # OCR processing metadata.
  #
  # Captures information about OCR processing configuration and results.
  class OcrMetadata
    include JSON::Serializable
    # OCR language code(s) used
    getter language : String = ""
    # Tesseract Page Segmentation Mode (PSM)
    getter psm : Int32 = 0
    # Output format (e.g., "text", "hocr")
    getter output_format : String = ""
    # Number of tables detected
    getter table_count : UInt32 = 0
    # Number of rows in the detected table (if a single table was found).
    getter table_rows : UInt32?
    # Number of columns in the detected table (if a single table was found).
    getter table_cols : UInt32?
    def initialize(
      @language : String = "",
      @psm : Int32 = 0,
      @output_format : String = "",
      @table_count : UInt32 = 0,
      @table_rows : UInt32? = nil,
      @table_cols : UInt32? = nil
    )
    end
  end

  # Error metadata (for batch operations).
  class ErrorMetadata
    include JSON::Serializable
    # Machine-readable error type identifier (e.g. "UnsupportedFormat").
    getter error_type : String = ""
    # Human-readable error description.
    getter message : String = ""
    def initialize(
      @error_type : String = "",
      @message : String = ""
    )
    end
  end

  # PowerPoint presentation metadata.
  #
  # Extracted from PPTX files containing slide counts and presentation details.
  class PptxMetadata
    include JSON::Serializable
    # Total number of slides in the presentation
    getter slide_count : UInt32 = 0
    # Names of slides (if available)
    getter slide_names : Array(String) = [] of String
    # Number of embedded images
    getter image_count : UInt32?
    # Number of tables
    getter table_count : UInt32?
    def initialize(
      @slide_count : UInt32 = 0,
      @slide_names : Array(String) = [] of String,
      @image_count : UInt32? = nil,
      @table_count : UInt32? = nil
    )
    end
  end

  # Word document metadata.
  #
  # Extracted from DOCX files using shared Office Open XML metadata extraction.
  # Integrates with `office_metadata` module for core/app/custom properties.
  class DocxMetadata
    include JSON::Serializable
    # Core properties from docProps/core.xml (Dublin Core metadata)
    #
    # Contains title, creator, subject, keywords, dates, etc.
    # Shared format across DOCX/PPTX/XLSX documents.
    getter core_properties : CoreProperties?
    # Application properties from docProps/app.xml (Word-specific statistics)
    #
    # Contains word count, page count, paragraph count, editing time, etc.
    # DOCX-specific variant of Office application properties.
    getter app_properties : DocxAppProperties?
    # Custom properties from docProps/custom.xml (user-defined properties)
    #
    # Contains key-value pairs defined by users or applications.
    # Values can be strings, numbers, booleans, or dates.
    getter custom_properties : Hash(String, JSON::Any)?
    def initialize(
      @core_properties : CoreProperties? = nil,
      @app_properties : DocxAppProperties? = nil,
      @custom_properties : Hash(String, JSON::Any)? = nil
    )
    end
  end

  # CSV/TSV file metadata.
  class CsvMetadata
    include JSON::Serializable
    # Total number of data rows (excluding the header row if present).
    getter row_count : UInt32 = 0
    # Number of columns detected.
    getter column_count : UInt32 = 0
    # Field delimiter character (e.g. `","` or `"\t"`).
    getter delimiter : String?
    # Whether the first row was treated as a header.
    getter has_header : Bool = false
    # Inferred data type for each column (e.g. `"string"`, `"integer"`, `"float"`).
    getter column_types : Array(String)?
    def initialize(
      @row_count : UInt32 = 0,
      @column_count : UInt32 = 0,
      @delimiter : String? = nil,
      @has_header : Bool = false,
      @column_types : Array(String)? = nil
    )
    end
  end

  # BibTeX bibliography metadata.
  class BibtexMetadata
    include JSON::Serializable
    # Number of entries in the bibliography.
    getter entry_count : UInt64 = 0
    # BibTeX citation keys (e.g. `"knuth1984"`) for all entries.
    getter citation_keys : Array(String) = [] of String
    # Author names collected across all bibliography entries.
    getter authors : Array(String) = [] of String
    # Earliest and latest publication years found in the bibliography.
    getter year_range : YearRange?
    # Count of entries grouped by BibTeX entry type (e.g. `"article"` → 5).
    getter entry_types : Hash(String, UInt64)?
    def initialize(
      @entry_count : UInt64 = 0,
      @citation_keys : Array(String) = [] of String,
      @authors : Array(String) = [] of String,
      @year_range : YearRange? = nil,
      @entry_types : Hash(String, UInt64)? = nil
    )
    end
  end

  # Citation file metadata (RIS, PubMed, EndNote).
  class CitationMetadata
    include JSON::Serializable
    # Total number of citation records in the file.
    getter citation_count : UInt64 = 0
    # Detected citation file format (e.g. `"ris"`, `"pubmed"`, `"endnote"`).
    getter format : String?
    # Author names collected across all citation records.
    getter authors : Array(String) = [] of String
    # Earliest and latest publication years found in the file.
    getter year_range : YearRange?
    # DOI identifiers found in the citation records.
    getter dois : Array(String) = [] of String
    # Keywords collected from all citation records.
    getter keywords : Array(String) = [] of String
    def initialize(
      @citation_count : UInt64 = 0,
      @format : String? = nil,
      @authors : Array(String) = [] of String,
      @year_range : YearRange? = nil,
      @dois : Array(String) = [] of String,
      @keywords : Array(String) = [] of String
    )
    end
  end

  # Year range for bibliographic metadata.
  class YearRange
    include JSON::Serializable
    # Earliest (minimum) year in the range.
    getter min : UInt32?
    # Latest (maximum) year in the range.
    getter max : UInt32?
    # All individual years present in the collection.
    getter years : Array(UInt32) = [] of UInt32
    def initialize(
      @min : UInt32? = nil,
      @max : UInt32? = nil,
      @years : Array(UInt32) = [] of UInt32
    )
    end
  end

  # FictionBook (FB2) metadata.
  class FictionBookMetadata
    include JSON::Serializable
    # Genre tags as declared in the FB2 `<genre>` elements.
    getter genres : Array(String) = [] of String
    # Book series (sequence) names, if any.
    getter sequences : Array(String) = [] of String
    # Short annotation / summary from the FB2 `<annotation>` element.
    @[JSON::Field(key: "annotation")]
    getter annotation_ : String?
    def initialize(
      @genres : Array(String) = [] of String,
      @sequences : Array(String) = [] of String,
      @annotation_ : String? = nil
    )
    end
  end

  # dBASE (DBF) file metadata.
  class DbfMetadata
    include JSON::Serializable
    # Total number of data records in the DBF file.
    getter record_count : UInt64 = 0
    # Number of field (column) definitions.
    getter field_count : UInt64 = 0
    # Descriptor for each field in the table schema.
    getter fields : Array(DbfFieldInfo) = [] of DbfFieldInfo
    def initialize(
      @record_count : UInt64 = 0,
      @field_count : UInt64 = 0,
      @fields : Array(DbfFieldInfo) = [] of DbfFieldInfo
    )
    end
  end

  # dBASE field information.
  class DbfFieldInfo
    include JSON::Serializable
    # Field (column) name.
    getter name : String = ""
    # dBASE field type character (e.g. `"C"` for character, `"N"` for numeric).
    getter field_type : String = ""
    def initialize(
      @name : String = "",
      @field_type : String = ""
    )
    end
  end

  # JATS (Journal Article Tag Suite) metadata.
  class JatsMetadata
    include JSON::Serializable
    # Copyright statement from the article's `<permissions>` element.
    getter copyright : String?
    # Open-access license URI from the article's `<license>` element.
    getter license : String?
    # Publication history dates keyed by event type (e.g. `"received"`, `"accepted"`).
    getter history_dates : Hash(String, String) = {} of String => String
    # Authors and contributors with their stated roles.
    getter contributor_roles : Array(ContributorRole) = [] of ContributorRole
    def initialize(
      @copyright : String? = nil,
      @license : String? = nil,
      @history_dates : Hash(String, String) = {} of String => String,
      @contributor_roles : Array(ContributorRole) = [] of ContributorRole
    )
    end
  end

  # JATS contributor with role.
  class ContributorRole
    include JSON::Serializable
    # Contributor display name.
    getter name : String = ""
    # Contributor role (e.g. `"author"`, `"editor"`).
    getter role : String?
    def initialize(
      @name : String = "",
      @role : String? = nil
    )
    end
  end

  # EPUB metadata (Dublin Core extensions).
  class EpubMetadata
    include JSON::Serializable
    # Dublin Core `coverage` field (geographic or temporal scope).
    getter coverage : String?
    # Dublin Core `format` field (media type of the resource).
    getter dc_format : String?
    # Dublin Core `relation` field (related resource identifier).
    getter relation : String?
    # Dublin Core `source` field (origin resource identifier).
    getter source : String?
    # Dublin Core `type` field (nature or genre of the resource).
    getter dc_type : String?
    # Path or identifier of the cover image within the EPUB container.
    getter cover_image : String?
    def initialize(
      @coverage : String? = nil,
      @dc_format : String? = nil,
      @relation : String? = nil,
      @source : String? = nil,
      @dc_type : String? = nil,
      @cover_image : String? = nil
    )
    end
  end

  # Outlook PST archive metadata.
  class PstMetadata
    include JSON::Serializable
    # Total number of email messages found in the PST archive.
    getter message_count : UInt64 = 0
    def initialize(
      @message_count : UInt64 = 0
    )
    end
  end

  # Audio/video file metadata.
  #
  # Populated from container tags (ID3v2, MP4 atoms, Vorbis comments, etc.) and
  # PCM decode properties. Available when the `transcription-types` feature is enabled.
  class AudioMetadata
    include JSON::Serializable
    # Duration in milliseconds derived from the decoded audio stream.
    getter duration_ms : UInt64?
    # Audio codec (e.g. "mp3", "aac", "opus", "flac").
    getter codec : String?
    # Container format (e.g. "mpeg", "mp4", "ogg", "wav").
    getter container : String?
    # Sample rate in Hz after decode (always 16000 when resampled for Whisper).
    getter sample_rate_hz : UInt32?
    # Number of audio channels (1 = mono, 2 = stereo).
    getter channels : UInt16?
    # Audio bitrate in kbps from the source file tags/properties.
    getter bitrate : UInt32?
    def initialize(
      @duration_ms : UInt64? = nil,
      @codec : String? = nil,
      @container : String? = nil,
      @sample_rate_hz : UInt32? = nil,
      @channels : UInt16? = nil,
      @bitrate : UInt32? = nil
    )
    end
  end

  # Confidence scores for an OCR element.
  #
  # Separates detection confidence (how confident that text exists at this location)
  # from recognition confidence (how confident about the actual text content).
  class OcrConfidence
    include JSON::Serializable
    # Detection confidence: how confident the OCR engine is that text exists here.
    #
    # PaddleOCR provides this as `box_score`, Tesseract doesn't have a direct equivalent.
    # Range: 0.0 to 1.0 (or None if not available).
    getter detection : Float64?
    # Recognition confidence: how confident about the text content.
    #
    # Range: 0.0 to 1.0.
    getter recognition : Float64 = 0.0
    def initialize(
      @detection : Float64? = nil,
      @recognition : Float64 = 0.0
    )
    end
  end

  # Rotation information for an OCR element.
  class OcrRotation
    include JSON::Serializable
    # Rotation angle in degrees (0, 90, 180, 270 for PaddleOCR).
    getter angle_degrees : Float64 = 0.0
    # Confidence score for the rotation detection.
    getter confidence : Float64?
    def initialize(
      @angle_degrees : Float64 = 0.0,
      @confidence : Float64? = nil
    )
    end
  end

  # A unified OCR element representing detected text with full metadata.
  #
  # This is the primary type for structured OCR output, preserving all information
  # from both Tesseract and PaddleOCR backends.
  class OcrElement
    include JSON::Serializable
    # The recognized text content.
    getter text : String = ""
    # Bounding geometry (rectangle or quadrilateral).
    getter geometry : OcrBoundingGeometry = OcrBoundingGeometry.from_json("{\"type\": \"rectangle\"}")
    # Confidence scores for detection and recognition.
    getter confidence : OcrConfidence = OcrConfidence.from_json("{}")
    # Hierarchical level (word, line, block, page).
    getter level : OcrElementLevel = OcrElementLevel::Line
    # Rotation information (if detected).
    getter rotation : OcrRotation?
    # Page number (1-indexed).
    getter page_number : UInt32 = 0
    # Parent element ID for hierarchical relationships.
    #
    # Only used for Tesseract output which has word -> line -> block hierarchy.
    getter parent_id : String?
    # Backend-specific metadata that doesn't fit the unified schema.
    getter backend_metadata : Hash(String, JSON::Any) = {} of String => JSON::Any
    def initialize(
      @text : String = "",
      @geometry : OcrBoundingGeometry = OcrBoundingGeometry.from_json("{\"type\": \"rectangle\"}"),
      @confidence : OcrConfidence = OcrConfidence.from_json("{}"),
      @level : OcrElementLevel = OcrElementLevel::Line,
      @rotation : OcrRotation? = nil,
      @page_number : UInt32 = 0,
      @parent_id : String? = nil,
      @backend_metadata : Hash(String, JSON::Any) = {} of String => JSON::Any
    )
    end
  end

  # Configuration for OCR element extraction.
  #
  # Controls how OCR elements are extracted and filtered.
  class OcrElementConfig
    include JSON::Serializable
    # Whether to include OCR elements in the extraction result.
    #
    # When true, the `ocr_elements` field in `ExtractedDocument` will be populated.
    getter include_elements : Bool = false
    # Minimum hierarchical level to include.
    #
    # Elements below this level (e.g., words when min_level is Line) will be excluded.
    getter min_level : OcrElementLevel = OcrElementLevel::Line
    # Minimum recognition confidence threshold (0.0-1.0).
    #
    # Elements with confidence below this threshold will be filtered out.
    getter min_confidence : Float64 = 0.0
    # Whether to build hierarchical relationships between elements.
    #
    # When true, `parent_id` fields will be populated based on spatial containment.
    # Only meaningful for Tesseract output.
    getter build_hierarchy : Bool = false
    def initialize(
      @include_elements : Bool = false,
      @min_level : OcrElementLevel = OcrElementLevel::Line,
      @min_confidence : Float64 = 0.0,
      @build_hierarchy : Bool = false
    )
    end
  end

  # Unified page structure for documents.
  #
  # Supports different page types (PDF pages, PPTX slides, Excel sheets)
  # with character offset boundaries for chunk-to-page mapping.
  class PageStructure
    include JSON::Serializable
    # Total number of pages/slides/sheets
    getter total_count : UInt32 = 0
    # Type of paginated unit
    getter unit_type : PageUnitType = PageUnitType::Page
    # Character offset boundaries for each page
    #
    # Maps character ranges in the extracted content to page numbers.
    # Used for chunk page range calculation.
    getter boundaries : Array(PageBoundary)?
    # Detailed per-page metadata (optional, only when needed)
    getter pages : Array(PageInfo)?
    def initialize(
      @total_count : UInt32 = 0,
      @unit_type : PageUnitType = PageUnitType::Page,
      @boundaries : Array(PageBoundary)? = nil,
      @pages : Array(PageInfo)? = nil
    )
    end
  end

  # Byte offset boundary for a page.
  #
  # Tracks where a specific page's content starts and ends in the main content string,
  # enabling mapping from byte positions to page numbers. Offsets are guaranteed to be
  # at valid UTF-8 character boundaries when using standard String methods (push_str, push, etc.).
  class PageBoundary
    include JSON::Serializable
    # Byte offset where this page starts in the content string (UTF-8 valid boundary, inclusive)
    getter byte_start : UInt64 = 0
    # Byte offset where this page ends in the content string (UTF-8 valid boundary, exclusive)
    getter byte_end : UInt64 = 0
    # Page number (1-indexed)
    getter page_number : UInt32 = 0
    def initialize(
      @byte_start : UInt64 = 0,
      @byte_end : UInt64 = 0,
      @page_number : UInt32 = 0
    )
    end
  end

  # Metadata for individual page/slide/sheet.
  #
  # Captures per-page information including dimensions, content counts,
  # and visibility state (for presentations).
  class PageInfo
    include JSON::Serializable
    # Page number (1-indexed)
    getter number : UInt32 = 0
    # Page title (usually for presentations)
    getter title : String?
    # Number of images on this page
    getter image_count : UInt32?
    # Number of tables on this page
    getter table_count : UInt32?
    # Whether this page is hidden (e.g., in presentations)
    getter hidden : Bool?
    # Whether this page is blank (no meaningful text, no images, no tables)
    #
    # A page is considered blank if it has fewer than 3 non-whitespace characters
    # and contains no tables or images. This is useful for filtering out empty pages
    # in scanned documents or PDFs with blank separator pages.
    getter is_blank : Bool?
    # Whether this page contains non-trivial vector graphics (paths, shapes, curves)
    #
    # Indicates the presence of vector-drawn content such as charts, diagrams,
    # or geometric shapes (e.g., from Adobe InDesign, LaTeX TikZ). These are
    # invisible to `ExtractedDocument.images` since they are not embedded as raster
    # XObjects. Set to `true` when path count exceeds a heuristic threshold,
    # signaling that downstream consumers may want to rasterize the page to
    # capture this content.
    #
    # Only populated for PDFs; `None` for other document types.
    getter has_vector_graphics : Bool = false
    def initialize(
      @number : UInt32 = 0,
      @title : String? = nil,
      @image_count : UInt32? = nil,
      @table_count : UInt32? = nil,
      @hidden : Bool? = nil,
      @is_blank : Bool? = nil,
      @has_vector_graphics : Bool = false
    )
    end
  end

  # Content for a single page/slide.
  #
  # When page extraction is enabled, documents are split into per-page content
  # with associated tables and images mapped to each page.
  #
  # # Performance
  #
  # Uses Arc-wrapped tables and images for memory efficiency:
  # - `Vec<Arc<Table>>` enables zero-copy sharing of table data
  # - `Vec<Arc<ExtractedImage>>` enables zero-copy sharing of image data
  # - Maintains exact JSON compatibility via custom Serialize/Deserialize
  #
  # This reduces memory overhead for documents with shared tables/images
  # by avoiding redundant copies during serialization.
  class PageContent
    include JSON::Serializable
    # Page number (1-indexed)
    getter page_number : UInt32 = 0
    # Text content for this page
    getter content : String = ""
    # Tables found on this page (uses Arc for memory efficiency)
    #
    # Serializes as `Vec<Table>` for JSON compatibility while maintaining
    # Arc semantics in-memory for zero-copy sharing.
    getter tables : Array(Table) = [] of Table
    # Indices into `ExtractedDocument.images` for images found on this page.
    #
    # Each value is a zero-based index into the top-level `images` collection.
    # Only populated when `extract_images = true` in the extraction config.
    getter image_indices : Array(UInt32) = [] of UInt32
    # Hierarchy information for the page (when hierarchy extraction is enabled)
    #
    # Contains text hierarchy levels (H1-H6) extracted from the page content.
    getter hierarchy : PageHierarchy?
    # Whether this page is blank (no meaningful text content)
    #
    # Determined during extraction based on text content analysis.
    # A page is blank if it has fewer than 3 non-whitespace characters
    # and contains no tables or images.
    getter is_blank : Bool?
    # Layout detection regions for this page (when layout detection is enabled).
    #
    # Contains detected layout regions with class, confidence, bounding box,
    # and area fraction. Only populated when layout detection is configured.
    getter layout_regions : Array(LayoutRegion)?
    # Speaker notes for this slide (PPTX only).
    #
    # Contains the text from the slide's notes pane (`ppt/notesSlides/notesSlide{N}.xml`).
    # Only populated when the source is a PPTX file and notes are present.
    getter speaker_notes : String?
    # Section name this slide belongs to (PPTX only).
    #
    # PowerPoint sections group slides into logical chapters (`<p:sectionLst>` in
    # `ppt/presentation.xml`). Only populated when the source is a PPTX file and
    # the slide belongs to a named section.
    getter section_name : String?
    # Sheet name for this page (XLSX/ODS only).
    #
    # Each spreadsheet sheet maps to one `PageContent` entry. This field carries the
    # sheet's display name as it appears in the workbook. `None` for all non-spreadsheet
    # formats and for sheets with an empty name.
    getter sheet_name : String?
    def initialize(
      @page_number : UInt32 = 0,
      @content : String = "",
      @tables : Array(Table) = [] of Table,
      @image_indices : Array(UInt32) = [] of UInt32,
      @hierarchy : PageHierarchy? = nil,
      @is_blank : Bool? = nil,
      @layout_regions : Array(LayoutRegion)? = nil,
      @speaker_notes : String? = nil,
      @section_name : String? = nil,
      @sheet_name : String? = nil
    )
    end
  end

  # A detected layout region on a page.
  #
  # When layout detection is enabled, each page may have layout regions
  # identifying different content types (text, pictures, tables, etc.)
  # with confidence scores and spatial positions.
  class LayoutRegion
    include JSON::Serializable
    # Layout class name (e.g. "picture", "table", "text", "section_header").
    getter class_name : String = ""
    # Confidence score from the layout detection model (0.0 to 1.0).
    getter confidence : Float64 = 0.0
    # Bounding box in document coordinate space.
    getter bounding_box : BoundingBox = BoundingBox.from_json("{}")
    # Fraction of the page area covered by this region (0.0 to 1.0).
    getter area_fraction : Float64 = 0.0
    def initialize(
      @class_name : String = "",
      @confidence : Float64 = 0.0,
      @bounding_box : BoundingBox = BoundingBox.from_json("{}"),
      @area_fraction : Float64 = 0.0
    )
    end
  end

  # Page hierarchy structure containing heading levels and block information.
  #
  # Used when PDF text hierarchy extraction is enabled. Contains hierarchical
  # blocks with heading levels (H1-H6) for semantic document structure.
  class PageHierarchy
    include JSON::Serializable
    # Number of hierarchy blocks on this page
    getter block_count : UInt32 = 0
    # Hierarchical blocks with heading levels
    getter blocks : Array(HierarchicalBlock) = [] of HierarchicalBlock
    def initialize(
      @block_count : UInt32 = 0,
      @blocks : Array(HierarchicalBlock) = [] of HierarchicalBlock
    )
    end
  end

  # A text block with hierarchy level assignment.
  #
  # Represents a block of text with semantic heading information extracted from
  # font size clustering and hierarchical analysis.
  class HierarchicalBlock
    include JSON::Serializable
    # The text content of this block
    getter text : String = ""
    # The font size of the text in this block
    getter font_size : Float32 = 0.0
    # The hierarchy level of this block (H1-H6 or Body)
    #
    # Levels correspond to HTML heading tags:
    # - "h1": Top-level heading
    # - "h2": Secondary heading
    # - "h3": Tertiary heading
    # - "h4": Quaternary heading
    # - "h5": Quinary heading
    # - "h6": Senary heading
    # - "body": Body text (no heading level)
    getter level : String = ""
    def initialize(
      @text : String = "",
      @font_size : Float32 = 0.0,
      @level : String = ""
    )
    end
  end

  # One QR code decoded from an extracted image.
  class QrCode
    include JSON::Serializable
    # Decoded payload (text, URL, vCard string, …).
    getter payload : String = ""
    # Detector-reported confidence in `[0.0, 1.0]`. `None` when the decoder
    # does not expose confidence (the default `rqrr` backend always reports
    # `Some` because successful decode implies high confidence).
    getter confidence : Float32?
    # Bounding box of the QR code inside the source image, in pixel coordinates
    # (`x`, `y` of the top-left corner; `width`, `height` of the rectangle).
    # `None` if the decoder did not report a bounding box.
    getter bbox : QrBoundingBox?
    def initialize(
      @payload : String = "",
      @confidence : Float32? = nil,
      @bbox : QrBoundingBox? = nil
    )
    end
  end

  # Pixel-space bounding box of a QR code inside its source image.
  class QrBoundingBox
    include JSON::Serializable
    # Horizontal pixel offset of the bounding box top-left corner.
    getter x : UInt32 = 0
    # Vertical pixel offset of the bounding box top-left corner.
    getter y : UInt32 = 0
    # Width of the bounding box in pixels.
    getter width : UInt32 = 0
    # Height of the bounding box in pixels.
    getter height : UInt32 = 0
    def initialize(
      @x : UInt32 = 0,
      @y : UInt32 = 0,
      @width : UInt32 = 0,
      @height : UInt32 = 0
    )
    end
  end

  # Audit report describing what the redaction processor found and how it replaced it.
  #
  # The redactor returns this alongside the rewritten content so compliance, replay, and
  # audit-log consumers can see exactly what fired. Offsets are relative to the *original*
  # pre-redaction `content` and are intended for audit reconstruction only — the original
  # bytes are dropped at the end of the pipeline.
  class RedactionReport
    include JSON::Serializable
    # Individual redaction findings in original-source byte order.
    getter findings : Array(RedactionFinding) = [] of RedactionFinding
    # Total number of redactions applied across the document.
    getter total_redacted : UInt32 = 0
    def initialize(
      @findings : Array(RedactionFinding) = [] of RedactionFinding,
      @total_redacted : UInt32 = 0
    )
    end
  end

  # One redaction event: which span was rewritten, why, and with what.
  class RedactionFinding
    include JSON::Serializable
    # Byte-offset start in the original (pre-redaction) `ExtractedDocument::content`.
    getter start : UInt32 = 0
    # Byte-offset end (exclusive) in the original `ExtractedDocument::content`.
    @[JSON::Field(key: "end")]
    getter end_ : UInt32 = 0
    # PII category that fired this redaction.
    getter category : PiiCategory = PiiCategory::Email.new
    # Strategy applied to this finding (mask, hash, token-replace, drop).
    getter strategy : RedactionStrategy = RedactionStrategy::Mask
    # String that replaced the original mention. Always present; for `Drop` the
    # replacement is the empty string.
    getter replacement_token : String = ""
    def initialize(
      @start : UInt32 = 0,
      @end_ : UInt32 = 0,
      @category : PiiCategory = PiiCategory::Email.new,
      @strategy : RedactionStrategy = RedactionStrategy::Mask,
      @replacement_token : String = ""
    )
    end
  end

  # A single changed cell within a table.
  #
  # Defined here (rather than only in `crate::diff`) so `RevisionDelta` can
  # reference it unconditionally, without requiring the `diff` Cargo feature.
  # `crate::diff` re-exports this type verbatim.
  class CellChange
    include JSON::Serializable
    # Zero-based row index.
    getter row : UInt64 = 0
    # Zero-based column index.
    getter col : UInt64 = 0
    # Value before the change.
    getter from : String = ""
    # Value after the change.
    getter to : String = ""
    def initialize(
      @row : UInt64 = 0,
      @col : UInt64 = 0,
      @from : String = "",
      @to : String = ""
    )
    end
  end

  # A single run-level or style-level property change.
  #
  # Used for revisions that change formatting rather than text content. `from`
  # and `to` store normalized property values when the source format exposes
  # them; either side may be absent when the format only records one side of the
  # change.
  class PropertyChange
    include JSON::Serializable
    # Property name, such as `"bold"`, `"italic"`, `"font_size"`, or `"font_color"`.
    getter name : String = ""
    # Value before the change, when available.
    getter from : String?
    # Value after the change, when available.
    getter to : String?
    def initialize(
      @name : String = "",
      @from : String? = nil,
      @to : String? = nil
    )
    end
  end

  # A single tracked change embedded in a document.
  #
  # Populated by per-format extractors that understand change-tracking metadata
  # (DOCX `w:ins`/`w:del`/`w:rPrChange`, ODT `text:change-*`, …). Every
  # extractor defaults to `ExtractedDocument.revisions = None` until a
  # format-specific implementation is added.
  class DocumentRevision
    include JSON::Serializable
    # Format-specific revision identifier.
    #
    # For DOCX this is the `w:id` attribute value on the change element
    # (e.g. `"42"`). When the attribute is absent a synthetic fallback is
    # generated (`"docx-ins-0"`, `"docx-del-3"`, …).
    getter revision_id : String = ""
    # Display name of the author who made this change, when available.
    getter author : String?
    # ISO-8601 timestamp of the change, when available.
    #
    # Stored as a plain string so this type remains FFI-friendly and
    # unconditionally available without the `chrono` optional dep.
    # DOCX populates this from the `w:date` attribute (e.g.
    # `"2024-03-15T10:30:00Z"`).
    getter timestamp : String?
    # Semantic kind of this revision.
    getter kind : RevisionKind = RevisionKind::Insertion
    # Best-effort document location for this revision.
    #
    # Resolution is format-dependent and may be `None` when the location
    # cannot be determined (e.g. changes inside table cells before
    # table-cell anchor support is added).
    getter anchor : RevisionAnchor?
    # The content changes that make up this revision.
    getter delta : RevisionDelta = RevisionDelta.from_json("{}")
    def initialize(
      @revision_id : String = "",
      @author : String? = nil,
      @timestamp : String? = nil,
      @kind : RevisionKind = RevisionKind::Insertion,
      @anchor : RevisionAnchor? = nil,
      @delta : RevisionDelta = RevisionDelta.from_json("{}")
    )
    end
  end

  # The content changes that make up a single revision.
  #
  # For insertions and deletions the `content` field carries the added/removed
  # lines as `DiffLine::Added` / `DiffLine::Removed` entries. For format
  # changes, `property_changes` carries normalized before/after formatting
  # values when the source document exposes them.
  class RevisionDelta
    include JSON::Serializable
    # Line-level content changes for this revision.
    getter content : Array(DiffLine) = [] of DiffLine
    # Cell-level table changes for this revision.
    getter table_changes : Array(CellChange) = [] of CellChange
    # Formatting or metadata property changes for this revision.
    getter property_changes : Array(PropertyChange) = [] of PropertyChange
    def initialize(
      @content : Array(DiffLine) = [] of DiffLine,
      @table_changes : Array(CellChange) = [] of CellChange,
      @property_changes : Array(PropertyChange) = [] of PropertyChange
    )
    end
  end

  # Summary of an extracted document.
  class DocumentSummary
    include JSON::Serializable
    # Summary text (plain prose).
    getter text : String = ""
    # Strategy that produced this summary.
    getter strategy : SummaryStrategy = SummaryStrategy::Extractive
    # Approximate token count of the summary, when known.
    getter token_count : UInt32?
    def initialize(
      @text : String = "",
      @strategy : SummaryStrategy = SummaryStrategy::Extractive,
      @token_count : UInt32? = nil
    )
    end
  end

  # Extracted table structure.
  #
  # Represents a table detected and extracted from a document (PDF, image, etc.).
  # Tables are converted to both structured cell data and Markdown format.
  class Table
    include JSON::Serializable
    # Table cells as a 2D vector (rows × columns)
    getter cells : Array(Array(String)) = [] of Array(String)
    # Markdown representation of the table
    getter markdown : String = ""
    # Page number where the table was found (1-indexed)
    getter page_number : UInt32 = 0
    # Bounding box of the table on the page (PDF coordinates: x0=left, y0=bottom, x1=right, y1=top).
    # Only populated for PDF-extracted tables when position data is available.
    getter bounding_box : BoundingBox?
    # Stable identifier shared by every `tables[]` entry that represents a
    # fragment of the same physical table.
    #
    # Assigned deterministically by the extraction pipeline (e.g. a
    # sequential `"table-N"` in document order); never derived from
    # randomness or wall-clock time, so the same input document always
    # produces the same ids. Consumers can use it to reconcile the markdown
    # blocks in `content` / `pages[].content` / `chunks[].content` with the
    # structured entries in `tables[]`. `None` when the extractor did not
    # assign one.
    #
    # Today, same-page fragments of one physical table are already merged
    # into a single `tables[]` entry before ids are assigned (see PDF table
    # stitching), so in practice `table_id` is unique per entry rather than
    # shared across several. A table split across a page boundary is
    # intentionally *not* linked — its per-page pieces get separate ids.
    # Sharing one id across page-boundary fragments is a known possible
    # future extension, not implemented yet.
    getter table_id : String?
    # Header cells for this fragment, i.e. the first row of `cells`.
    #
    # Populated even when this fragment's own header row was merged away or
    # physically lives in a sibling fragment (see `table_id`), so a single
    # fragment is interpretable in isolation. `None` when no header row
    # could be determined.
    getter columns : Array(String)?
    def initialize(
      @cells : Array(Array(String)) = [] of Array(String),
      @markdown : String = "",
      @page_number : UInt32 = 0,
      @bounding_box : BoundingBox? = nil,
      @table_id : String? = nil,
      @columns : Array(String)? = nil
    )
    end
  end

  # Individual table cell with content and optional styling.
  #
  # Future extension point for rich table support with cell-level metadata.
  class TableCell
    include JSON::Serializable
    # Cell content as text
    getter content : String = ""
    # Row span (number of rows this cell spans)
    getter row_span : UInt32 = 0
    # Column span (number of columns this cell spans)
    getter col_span : UInt32 = 0
    # Whether this is a header cell
    getter is_header : Bool = false
    def initialize(
      @content : String = "",
      @row_span : UInt32 = 0,
      @col_span : UInt32 = 0,
      @is_header : Bool = false
    )
    end
  end

  # Translation of the extracted content.
  #
  # Holds the translated rendition of `ExtractedDocument::content` and (when
  # `preserve_markup` was requested) the translated `formatted_content`. Chunks
  # are translated in place inside `ExtractedDocument::chunks[*].content` rather
  # than duplicated here.
  class Translation
    include JSON::Serializable
    # BCP-47 language tag the translation was produced into (e.g. `"de"`, `"fr-CA"`).
    getter target_lang : String = ""
    # BCP-47 source language. `None` when the translation backend was asked to detect.
    getter source_lang : String?
    # Translated plain-text body. Matches the shape of `ExtractedDocument::content`.
    getter content : String = ""
    # Translated markup body (Markdown / HTML / etc.) when `preserve_markup` was
    # enabled on the config. `None` otherwise.
    getter formatted_content : String?
    def initialize(
      @target_lang : String = "",
      @source_lang : String? = nil,
      @content : String = "",
      @formatted_content : String? = nil
    )
    end
  end

  # A URI extracted from a document.
  #
  # Represents any link, reference, or resource pointer found during extraction.
  # The `kind` field classifies the URI semantically, while `label` carries
  # optional human-readable display text.
  class ExtractedUri
    include JSON::Serializable
    # The URL or path string.
    getter url : String = ""
    # Optional display text / label for the link.
    getter label : String?
    # Optional page number where the URI was found (1-indexed).
    getter page : UInt32?
    # Semantic classification of the URI.
    getter kind : UriKind = UriKind::Hyperlink
    def initialize(
      @url : String = "",
      @label : String? = nil,
      @page : UInt32? = nil,
      @kind : UriKind = UriKind::Hyperlink
    )
    end
  end

  # MIME type detection response.
  class DetectResponse
    include JSON::Serializable
    # Detected MIME type
    getter mime_type : String = ""
    # Original filename (if provided)
    getter filename : String?
    def initialize(
      @mime_type : String = "",
      @filename : String? = nil
    )
    end
  end

  # Options controlling how two `ExtractedDocument` values are compared.
  class DiffOptions
    include JSON::Serializable
    # Include metadata changes in the diff. Default: `true`.
    getter include_metadata : Bool = true
    # Include embedded-children changes in the diff. Default: `true`.
    getter include_embedded : Bool = true
    # Truncate content to this many characters before diffing.
    #
    # Useful for very large documents where only the first N characters matter.
    # `None` means no truncation.
    getter max_content_chars : UInt64?
    def initialize(
      @include_metadata : Bool = true,
      @include_embedded : Bool = true,
      @max_content_chars : UInt64? = nil
    )
    end
  end

  # The complete diff between two `ExtractedDocument` values.
  class ExtractionDiff
    include JSON::Serializable
    # Unified-diff hunks for the `content` field.
    #
    # Empty when the content is identical.
    getter content_diff : Array(DiffHunk) = [] of DiffHunk
    # Tables present in `b` but not in `a` (by index position, excess right-side tables).
    getter tables_added : Array(Table) = [] of Table
    # Tables present in `a` but not in `b` (by index position, excess left-side tables).
    getter tables_removed : Array(Table) = [] of Table
    # Cell-level changes for table pairs that share the same index and dimensions.
    getter tables_changed : Array(TableDiff) = [] of TableDiff
    # Metadata difference, encoded as a JSON object with three top-level keys:
    # `added` (keys present in `b` but not `a`), `removed` (keys present in `a`
    # but not `b`), and `changed` (keys whose values differ — each entry is
    # `{ "from": <value-in-a>, "to": <value-in-b> }`).
    #
    # This is NOT RFC 6902 JSON Patch — we deliberately chose a flatter shape
    # to avoid pulling in a json-patch crate. If you need RFC 6902 semantics
    # (with JSON Pointer paths) feed `a.metadata` and `b.metadata` to your
    # preferred json-patch impl directly.
    getter metadata_changed : JSON::Any = JSON::Any.new(nil)
    # Changes to embedded archive children.
    getter embedded_changes : EmbeddedChanges = EmbeddedChanges.from_json("{}")
    def initialize(
      @content_diff : Array(DiffHunk) = [] of DiffHunk,
      @tables_added : Array(Table) = [] of Table,
      @tables_removed : Array(Table) = [] of Table,
      @tables_changed : Array(TableDiff) = [] of TableDiff,
      @metadata_changed : JSON::Any = JSON::Any.new(nil),
      @embedded_changes : EmbeddedChanges = EmbeddedChanges.from_json("{}")
    )
    end
  end

  # A single contiguous hunk in a unified diff.
  class DiffHunk
    include JSON::Serializable
    # Starting line number in the old content (0-indexed).
    getter from_line : UInt64 = 0
    # Number of lines from the old content in this hunk.
    getter from_count : UInt64 = 0
    # Starting line number in the new content (0-indexed).
    getter to_line : UInt64 = 0
    # Number of lines from the new content in this hunk.
    getter to_count : UInt64 = 0
    # Lines that make up this hunk.
    getter lines : Array(DiffLine) = [] of DiffLine
    def initialize(
      @from_line : UInt64 = 0,
      @from_count : UInt64 = 0,
      @to_line : UInt64 = 0,
      @to_count : UInt64 = 0,
      @lines : Array(DiffLine) = [] of DiffLine
    )
    end
  end

  # Cell-level changes for a pair of tables that share the same index.
  class TableDiff
    include JSON::Serializable
    # Zero-based index of the table in both `a.tables` and `b.tables`.
    getter from_index : UInt64 = 0
    # Zero-based index in `b.tables` (equal to `from_index` for same-dimension tables).
    getter to_index : UInt64 = 0
    # Cell-level changes within the table.
    getter cell_changes : Array(CellChange) = [] of CellChange
    def initialize(
      @from_index : UInt64 = 0,
      @to_index : UInt64 = 0,
      @cell_changes : Array(CellChange) = [] of CellChange
    )
    end
  end

  # Changes to embedded archive children between two results.
  class EmbeddedChanges
    include JSON::Serializable
    # Children present in `b` but not in `a` (matched by `path`).
    getter added : Array(ArchiveEntry) = [] of ArchiveEntry
    # Children present in `a` but not in `b` (matched by `path`).
    getter removed : Array(ArchiveEntry) = [] of ArchiveEntry
    # Children present in both but with differing content (matched by `path`).
    #
    # Each entry holds the diff of the nested `ExtractedDocument`.
    getter changed : Array(EmbeddedDiff) = [] of EmbeddedDiff
    def initialize(
      @added : Array(ArchiveEntry) = [] of ArchiveEntry,
      @removed : Array(ArchiveEntry) = [] of ArchiveEntry,
      @changed : Array(EmbeddedDiff) = [] of EmbeddedDiff
    )
    end
  end

  # Diff for a single embedded archive entry that appears in both results.
  class EmbeddedDiff
    include JSON::Serializable
    # Archive-relative path identifying this entry.
    getter path : String = ""
    # The recursive diff of the entry's extraction result.
    getter diff : ExtractionDiff = ExtractionDiff.from_json("{}")
    def initialize(
      @path : String = "",
      @diff : ExtractionDiff = ExtractionDiff.from_json("{}")
    )
    end
  end

  # A single document returned by the reranker, with its position in the input and score.
  #
  # `index` maps back to the caller's original document list, so metadata arrays
  # (e.g. IDs, paths) can be reordered without passing them through the reranker.
  #
  # Since v5.0.0.
  class RerankedDocument
    include JSON::Serializable
    # Position of this document in the original input `documents` slice.
    getter index : UInt64 = 0
    # Relevance score in `[0, 1]`. Higher means more relevant to the query.
    getter score : Float32 = 0.0
    # The document text.
    getter document : String = ""
    def initialize(
      @index : UInt64 = 0,
      @score : Float32 = 0.0,
      @document : String = ""
    )
    end
  end

  # A sparse learned embedding: vocabulary term indices and their weights.
  #
  # `indices` are ascending vocabulary token ids; `values[i]` is the weight for
  # `indices[i]`. The two arrays always have equal length. Only strictly-positive
  # terms are retained, so the representation is genuinely sparse.
  #
  # Since v5.0.0.
  class SparseEmbedding
    include JSON::Serializable
    # Vocabulary token ids with non-zero weight, ascending.
    getter indices : Array(UInt32) = [] of UInt32
    # Weights parallel to [`SparseEmbedding::indices`].
    getter values : Array(Float32) = [] of Float32
    def initialize(
      @indices : Array(UInt32) = [] of UInt32,
      @values : Array(Float32) = [] of Float32
    )
    end
  end

  # Static metadata for a bundled SPLADE preset (WASM/Android-safe, no ORT).
  #
  # Since v5.0.0.
  class SparseEmbeddingPreset
    include JSON::Serializable
    # Stable preset name referenced from config.
    getter name : String = ""
    # HuggingFace repository hosting the ONNX model.
    getter model_repo : String = ""
    # Path to the ONNX file within the repo.
    getter model_file : String = ""
    # Sibling files that must be downloaded alongside `model_file`.
    getter additional_files : Array(String) = [] of String
    # Maximum token sequence length.
    getter max_length : UInt64 = 0
    # Human-readable description.
    getter description : String = ""
    def initialize(
      @name : String = "",
      @model_repo : String = "",
      @model_file : String = "",
      @additional_files : Array(String) = [] of String,
      @max_length : UInt64 = 0,
      @description : String = ""
    )
    end
  end

  # A ColBERT multi-vector embedding: one row per attention-live token.
  #
  # `data` is a flat, row-major buffer of length `num_tokens * dim` — row `i`
  # (the embedding for token `i`) occupies `data[i*dim .. (i+1)*dim]`. Flat
  # storage keeps the type FFI-friendly across binding boundaries; use
  # [`MultiVectorEmbedding::rows`] internally to iterate per-token slices.
  #
  # Since v5.0.0.
  class MultiVectorEmbedding
    include JSON::Serializable
    # Number of attention-live token rows (padding rows are dropped, not
    # zeroed — see [`engine::normalize_tokens`]).
    getter num_tokens : UInt32 = 0
    # Dimensionality of each per-token vector.
    getter dim : UInt32 = 0
    # Flat row-major buffer, length `num_tokens * dim`.
    getter data : Array(Float32) = [] of Float32
    def initialize(
      @num_tokens : UInt32 = 0,
      @dim : UInt32 = 0,
      @data : Array(Float32) = [] of Float32
    )
    end
  end

  # Static metadata for a bundled ColBERT preset (WASM/Android-safe, no ORT).
  #
  # Since v5.0.0.
  class LateInteractionPreset
    include JSON::Serializable
    # Stable preset name referenced from config.
    getter name : String = ""
    # HuggingFace repository hosting the ONNX model.
    getter model_repo : String = ""
    # Path to the ONNX file within the repo.
    getter model_file : String = ""
    # Sibling files that must be downloaded alongside `model_file`.
    getter additional_files : Array(String) = [] of String
    # Maximum document token sequence length.
    getter max_length : UInt64 = 0
    # Fixed padded query length (ColBERT query augmentation).
    getter query_max_length : UInt64 = 0
    # Per-token embedding dimensionality.
    getter dim : UInt64 = 0
    # Human-readable description.
    getter description : String = ""
    def initialize(
      @name : String = "",
      @model_repo : String = "",
      @model_file : String = "",
      @additional_files : Array(String) = [] of String,
      @max_length : UInt64 = 0,
      @query_max_length : UInt64 = 0,
      @dim : UInt64 = 0,
      @description : String = ""
    )
    end
  end

  # A single document match returned by [`max_sim_rank`], with its position in
  # the input and MaxSim score.
  #
  # Since v5.0.0.
  class LateInteractionMatch
    include JSON::Serializable
    # Position of this document in the original input slice.
    getter index : UInt64 = 0
    # MaxSim relevance score. Higher means more relevant to the query.
    getter score : Float32 = 0.0
    def initialize(
      @index : UInt64 = 0,
      @score : Float32 = 0.0
    )
    end
  end

  # YAKE-specific parameters.
  class YakeParams
    include JSON::Serializable
    # Window size for co-occurrence analysis (default: 2).
    #
    # Controls the context window for computing co-occurrence statistics.
    getter window_size : UInt64 = 2
    def initialize(
      @window_size : UInt64 = 2
    )
    end
  end

  # RAKE-specific parameters.
  class RakeParams
    include JSON::Serializable
    # Minimum word length to consider (default: 1).
    getter min_word_length : UInt64 = 1
    # Maximum words in a keyword phrase (default: 3).
    getter max_words_per_phrase : UInt64 = 3
    def initialize(
      @min_word_length : UInt64 = 1,
      @max_words_per_phrase : UInt64 = 3
    )
    end
  end

  # Keyword extraction configuration.
  class KeywordConfig
    include JSON::Serializable
    # Algorithm to use for extraction.
    getter algorithm : KeywordAlgorithm = KeywordAlgorithm::Yake
    # Maximum number of keywords to extract (default: 10).
    getter max_keywords : UInt64 = 10
    # Minimum score threshold (0.0-1.0, default: 0.0).
    #
    # Keywords with scores below this threshold are filtered out.
    # Note: Score ranges differ between algorithms.
    getter min_score : Float32 = 0.0
    # Language code for stopword filtering (e.g., "en", "de", "fr").
    #
    # If None, no stopword filtering is applied.
    getter language : String?
    # YAKE-specific tuning parameters.
    getter yake_params : YakeParams?
    # RAKE-specific tuning parameters.
    getter rake_params : RakeParams?
    def initialize(
      @algorithm : KeywordAlgorithm = KeywordAlgorithm::Yake,
      @max_keywords : UInt64 = 10,
      @min_score : Float32 = 0.0,
      @language : String? = nil,
      @yake_params : YakeParams? = nil,
      @rake_params : RakeParams? = nil
    )
    end
  end

  # Extracted keyword with metadata.
  class Keyword
    include JSON::Serializable
    # The keyword text.
    getter text : String = ""
    # Relevance score (higher is better, algorithm-specific range).
    getter score : Float32 = 0.0
    # Algorithm that extracted this keyword.
    getter algorithm : KeywordAlgorithm = KeywordAlgorithm::Yake
    # Optional positions where keyword appears in text (character offsets).
    getter positions : Array(UInt64)?
    def initialize(
      @text : String = "",
      @score : Float32 = 0.0,
      @algorithm : KeywordAlgorithm = KeywordAlgorithm::Yake,
      @positions : Array(UInt64)? = nil
    )
    end
  end

  # Metadata about a document for analysis.
  class DocumentMetadata
    include JSON::Serializable
    # MIME type of the document.
    getter mime_type : String = ""
    # File size in bytes.
    getter size_bytes : UInt64 = 0
    # Page count (if known, e.g., from previous analysis).
    getter page_count : UInt32?
    # Whether OCR is forced regardless of text layer.
    getter force_ocr : Bool = false
    # User-provided chunk configuration overrides.
    getter user_chunk_config : UserChunkConfig?
    # Whether chunking is enabled for this job.
    getter chunking_enabled : Bool = false
    def initialize(
      @mime_type : String = "",
      @size_bytes : UInt64 = 0,
      @page_count : UInt32? = nil,
      @force_ocr : Bool = false,
      @user_chunk_config : UserChunkConfig? = nil,
      @chunking_enabled : Bool = false
    )
    end
  end

  # User-provided chunk configuration.
  class UserChunkConfig
    include JSON::Serializable
    # User-specified page ranges (overrides automatic chunking).
    getter page_ranges : Array(PageRange)?
    # User-specified pages per chunk (overrides automatic calculation).
    getter pages_per_chunk : UInt32?
    # Force chunking even for small documents.
    getter force_chunking : Bool = false
    # Disable chunking even for large documents.
    getter disable_chunking : Bool = false
    def initialize(
      @page_ranges : Array(PageRange)? = nil,
      @pages_per_chunk : UInt32? = nil,
      @force_chunking : Bool = false,
      @disable_chunking : Bool = false
    )
    end
  end

  # Combined confidence on `[0, 1]`.
  #
  # When OCR did not run, the `ocr_aggregate` weight folds into `text_coverage`
  # so the weighted sum still totals 1.0.
  class ExtractionConfidence
    include JSON::Serializable
    # Fraction of pages with a usable text layer.
    getter text_coverage : Float32 = 0.0
    # Mean OCR per-element recognition confidence when OCR ran; `None` when it did not.
    getter ocr_aggregate : Float32?
    # Whether the merged output validates against the preset schema.
    getter schema_compliance : SchemaCompliance = SchemaCompliance::AllValid
    # Weighted blend in `[0, 1]`.  The value compared against the fallback threshold.
    getter combined : Float32 = 0.0
    def initialize(
      @text_coverage : Float32 = 0.0,
      @ocr_aggregate : Float32? = nil,
      @schema_compliance : SchemaCompliance = SchemaCompliance::AllValid,
      @combined : Float32 = 0.0
    )
    end
  end

  # Configuration for document chunking and analysis heuristics.
  #
  # Every threshold is a public field so callers can override any subset via
  # struct-update syntax: `HeuristicsConfig { text_layer_threshold: 0.5, ..Default::default() }`.
  class HeuristicsConfig
    include JSON::Serializable
    # Enable PDF text-layer detection heuristics.
    #
    # When `true`, PDFs with a substantial text layer will skip chunking.
    # Default: `true`.
    getter enable_pdf_text_heuristics : Bool = true
    # Minimum fraction of pages that must have text to skip chunking.
    #
    # Range `0.0..=1.0`. Default: `0.7` (70 % of pages).
    getter text_layer_threshold : Float32 = 0.7
    # File size threshold in bytes for considering chunking.
    #
    # Files smaller than this are processed without chunking.
    # Default: 10 MiB (10 × 1 024 × 1 024).
    getter file_size_threshold_bytes : UInt64 = 10485760
    # Page count threshold for considering chunking.
    #
    # Documents with fewer pages are processed without chunking.
    # Default: 50.
    getter page_count_threshold : UInt32 = 50
    # Target number of pages per chunk for optimal parallel processing.
    #
    # Default: 10.
    getter target_pages_per_chunk : UInt32 = 10
    # Hard cap on pages per chunk.
    #
    # No chunk will exceed this limit. Must be ≥ `target_pages_per_chunk`.
    # Default: 25.
    getter max_pages_per_chunk : UInt32 = 25
    # File size threshold for disk-based processing.
    #
    # Files larger than this are buffered to disk to prevent OOM.
    # Default: 50 MiB (50 × 1 024 × 1 024).
    getter disk_processing_threshold_bytes : UInt64 = 52428800
    # Minimum characters per page to consider a page as having text.
    #
    # Default: 50.
    getter min_chars_per_page : UInt32 = 50
    # Maximum sheet count allowed in an XLSX workbook.
    #
    # Workbooks beyond this are rejected pre-extraction to avoid OOM /
    # abusive billing inflation. Default: 200.
    getter max_xlsx_sheet_count : UInt32 = 200
    # Maximum cell count (sheets × rows × columns approximation) in an XLSX workbook.
    #
    # Default: 5 000 000 (≈ 200 sheets × 25 k cells).
    getter max_xlsx_workbook_cells : UInt64 = 5000000
    # Maximum number of OLE-embedded objects extractable from a single PPTX or DOCX.
    #
    # Protects against zip-bomb-style nested-document abuse. Default: 50.
    getter max_pptx_embedded_count : UInt32 = 50
    def initialize(
      @enable_pdf_text_heuristics : Bool = true,
      @text_layer_threshold : Float32 = 0.7,
      @file_size_threshold_bytes : UInt64 = 10485760,
      @page_count_threshold : UInt32 = 50,
      @target_pages_per_chunk : UInt32 = 10,
      @max_pages_per_chunk : UInt32 = 25,
      @disk_processing_threshold_bytes : UInt64 = 52428800,
      @min_chars_per_page : UInt32 = 50,
      @max_xlsx_sheet_count : UInt32 = 200,
      @max_xlsx_workbook_cells : UInt64 = 5000000,
      @max_pptx_embedded_count : UInt32 = 50
    )
    end
  end

  # Information about a single chunk.
  class ChunkInfo
    include JSON::Serializable
    # Zero-based chunk index.
    getter index : UInt32 = 0
    # Page range for this chunk.
    getter pages : PageRange = PageRange.from_json("{}")
    # Estimated processing time for this chunk in milliseconds.
    getter estimated_time_ms : UInt64 = 0
    def initialize(
      @index : UInt32 = 0,
      @pages : PageRange = PageRange.from_json("{}"),
      @estimated_time_ms : UInt64 = 0
    )
    end
  end

  # Page range for a chunk (0-indexed, inclusive).
  class PageRange
    include JSON::Serializable
    # Start page (0-indexed, inclusive).
    getter start : UInt32 = 0
    # End page (0-indexed, inclusive).
    @[JSON::Field(key: "end")]
    getter end_ : UInt32 = 0
    def initialize(
      @start : UInt32 = 0,
      @end_ : UInt32 = 0
    )
    end
  end

  # Input signals for multi-document boundary detection.
  class MultidocInput
    include JSON::Serializable
    # Total number of pages in the PDF.
    getter page_count : UInt32 = 0
    # Per-page signals extracted from the PDF.
    getter pages : Array(PageSignals) = [] of PageSignals
    def initialize(
      @page_count : UInt32 = 0,
      @pages : Array(PageSignals) = [] of PageSignals
    )
    end
  end

  # Per-page signals extracted from PDF content.
  class PageSignals
    include JSON::Serializable
    # 1-indexed page number.
    getter page_number : UInt32 = 0
    # First ~500 characters of extracted text.
    getter text_excerpt : String = ""
    # `true` if page starts with letterhead-like content (ALL CAPS line in first 5 lines
    # or a logo-image bbox at top).
    getter starts_with_letterhead_like : Bool = false
    # `true` if text contains "Page 1" or "1 of N" pattern.
    getter has_page_number_one_marker : Bool = false
    # `true` if text contains signature indicators ("Sincerely", "Signed") or
    # a signature image bbox.
    getter has_signature_block : Bool = false
    # Text density: characters per page area, normalised to `[0.0, 1.0]`.
    getter layout_text_density : Float32 = 0.0
    def initialize(
      @page_number : UInt32 = 0,
      @text_excerpt : String = "",
      @starts_with_letterhead_like : Bool = false,
      @has_page_number_one_marker : Bool = false,
      @has_signature_block : Bool = false,
      @layout_text_density : Float32 = 0.0
    )
    end
  end

  # Detected document boundary within a PDF.
  class DocumentBoundary
    include JSON::Serializable
    # 1-indexed start page (inclusive).
    getter start_page : UInt32 = 0
    # 1-indexed end page (inclusive).
    getter end_page : UInt32 = 0
    # Confidence in this boundary, `[0.0, 1.0]`.
    getter confidence : Float32 = 0.0
    # Reason for the boundary detection.
    getter reason : BoundaryReason = BoundaryReason::Start
    def initialize(
      @start_page : UInt32 = 0,
      @end_page : UInt32 = 0,
      @confidence : Float32 = 0.0,
      @reason : BoundaryReason = BoundaryReason::Start
    )
    end
  end

  # Thresholds for multi-document boundary detection.
  #
  # All fields are public; callers override any subset via struct-update syntax.
  class MultidocThresholds
    include JSON::Serializable
    # Text density difference threshold for `DensityShift` detection.
    # Default: 0.3.
    getter density_shift_threshold : Float32 = 0.3
    # Minimum bigram-overlap ratio below which a density shift is promoted to
    # a `DensityShift` boundary.  Default: 0.1 (10 % overlap).
    getter bigram_overlap_min : Float32 = 0.1
    def initialize(
      @density_shift_threshold : Float32 = 0.3,
      @bigram_overlap_min : Float32 = 0.1
    )
    end
  end

  # Compiled meta-schema validator over `preset.schema.json`.
  class MetaSchema
    # Wraps the FFI handle; do not construct directly.
    def initialize(@handle : Void*)
    end
    # Raw handle for passing back across the C ABI.
    def to_unsafe : Void*
      @handle
    end
    def finalize
      LibXberg.meta_schema_free(@handle) unless @handle.null?
    end
    # Compile the given JSON text as a Draft 2020-12 meta-schema.
    def self.compile(meta_schema_json : String) : MetaSchema
    __ptr = LibXberg.meta_schema_compile(meta_schema_json)
    raise "LibXberg.meta_schema_compile returned a null pointer" if __ptr.null?
    MetaSchema.new(__ptr)
    end
    # Validate `raw` against the meta-schema and deserialize into a [`Preset`],
    # stamping the fingerprint over the canonical file bytes.
    def parse_preset(path : String, raw : Bytes) : Preset
    __ptr = LibXberg.meta_schema_parse_preset(@handle, path, raw.to_a.to_json)
    if __ptr.null?
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "LibXberg.meta_schema_parse_preset returned a null pointer"
    end
    __json_ptr = LibXberg.preset_to_json(__ptr)
    LibXberg.preset_free(__ptr)
    __json = String.new(__json_ptr)
    LibXberg.free_string(__json_ptr)
    Preset.from_json(__json)
    end
  end

  # Sorted map of preset id → [`Preset`].
  class Registry
    # Wraps the FFI handle; do not construct directly.
    def initialize(@handle : Void*)
    end
    # Raw handle for passing back across the C ABI.
    def to_unsafe : Void*
      @handle
    end
    def finalize
      LibXberg.registry_free(@handle) unless @handle.null?
    end
    # Build the registry from preset files embedded at compile time under
    # `src/presets/library/`. Validates every file against the meta-schema.
    def self.load_embedded() : Registry
    __ptr = LibXberg.registry_load_embedded()
    raise "LibXberg.registry_load_embedded returned a null pointer" if __ptr.null?
    Registry.new(__ptr)
    end
    # Return the global registry, loading it on first access.
    #
    # # Panics
    #
    # Panics if any embedded preset is malformed. The build-time validation
    # test ensures this cannot happen for the embedded presets; a panic here
    # indicates a build artifact problem, not a runtime error.
    def self.global() : Registry
    __ptr = LibXberg.registry_global()
    raise "LibXberg.registry_global returned a null pointer" if __ptr.null?
    Registry.new(__ptr)
    end
    # Look up a preset by its identifier.
    def get(id : String) : Preset?
    __ptr = LibXberg.registry_get(@handle, id)
    return nil if __ptr.null?
    __json_ptr = LibXberg.preset_to_json(__ptr)
    LibXberg.preset_free(__ptr)
    __json = String.new(__json_ptr)
    LibXberg.free_string(__json_ptr)
    Preset.from_json(__json)
    end
    # Materialize a [`PresetSummary`] list for the public registry endpoint.
    def summaries() : Array(PresetSummary)
    __ptr = LibXberg.registry_summaries(@handle)
    raise "LibXberg.registry_summaries returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    Array(PresetSummary).from_json(__json)
    end
    # Number of presets currently loaded.
    def len() : UInt64
    LibXberg.registry_len(@handle)
    end
    # Whether the registry contains zero presets.
    def is_empty() : Bool
    LibXberg.registry_is_empty(@handle)
    end
    # Read raw sample bytes for `<preset_id>` from
    # `library/<id>/samples/<name>`. Returns `None` when the file is absent.
    def sample_bytes(preset_id : String, name : String) : Bytes?
    __ptr = LibXberg.registry_sample_bytes(@handle, preset_id, name)
    return nil if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    __arr = Array(UInt8).from_json(__json)
    Bytes.new(__arr.size) { |i| __arr[i] }
    end
    # Load additional preset files from a runtime directory and insert them
    # into this registry.
    #
    # Reads every `*.json` file directly under `dir` (non-recursive),
    # validates each against the meta-schema, and inserts it. Files that fail
    # validation are rejected — the error is returned immediately and the
    # registry is left in a partially-updated state. Existing entries with the
    # same id are overwritten.
    #
    # Returns the number of presets successfully loaded from `dir`.
    #
    # # Use case
    #
    # This is the injection point for downstream catalogs that add curated
    # presets on top of the single embedded OSS preset.
    def extend_from_dir(dir : String) : UInt64
    __result = LibXberg.registry_extend_from_dir(@handle, dir)
    __code = LibXberg.last_error_code
    if __code != 0
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    __result
    end
  end

  # A preset merged with caller-supplied overrides (custom schema, prompt suffix,
  # context map). Output is what the pipeline orchestrator consumes.
  class ResolvedPreset
    include JSON::Serializable
    # Source preset identifier.
    getter id : String = ""
    # Source preset version.
    getter version : String = ""
    # Fingerprint of the source preset file, used as a cache token.
    getter fingerprint : String = ""
    # Schema name forwarded to the LLM.
    getter schema_name : String = ""
    # Effective JSON Schema (caller override or the preset's own).
    getter schema : JSON::Any = JSON::Any.new(nil)
    # System prompt with rendered context appended.
    getter system_prompt : String = ""
    # Merge strategy for paginated outputs.
    getter merge_mode : MergeMode = MergeMode::ObjectMerge
    # Preferred call mode.
    getter preferred_call_mode : CallMode = CallMode::TextOnly
    # Whether the prompt asks for per-field citations.
    getter emit_citations : Bool = false
    def initialize(
      @id : String = "",
      @version : String = "",
      @fingerprint : String = "",
      @schema_name : String = "",
      @schema : JSON::Any = JSON::Any.new(nil),
      @system_prompt : String = "",
      @merge_mode : MergeMode = MergeMode::ObjectMerge,
      @preferred_call_mode : CallMode = CallMode::TextOnly,
      @emit_citations : Bool = false
    )
    end
  end

  # Pointer to a sample input + its reference output bundled with the preset.
  class PresetSample
    include JSON::Serializable
    # Path to the sample input file, relative to the preset directory.
    getter input_path : String = ""
    # Path to the reference structured output, relative to the preset directory.
    getter output_path : String = ""
    def initialize(
      @input_path : String = "",
      @output_path : String = ""
    )
    end
  end

  # A curated structured-extraction preset loaded from the embedded library.
  #
  # Each preset is a JSON file under `src/presets/library/<id>/v1.json` that
  # validates against the meta-schema in `src/presets/preset.schema.json`.
  #
  # Downstream catalog consumers can inject presets via
  # `extend_from_dir`. The embedded OSS library
  # ships only the `generic_document` toy preset.
  class Preset
    include JSON::Serializable
    # Stable, URL-safe preset identifier (lowercase snake_case).
    getter id : String = ""
    # Monotonic version string (e.g. `v1`).
    getter version : String = ""
    # Human-readable schema name forwarded to the LLM as the response/tool name.
    getter schema_name : String = ""
    # One-line preset description shown in the registry UI.
    getter description : String = ""
    # Top-level category for grouping in the playground.
    getter category : PresetCategory = PresetCategory::Finance
    # Free-form tags used for search/filtering. May be empty.
    getter tags : Array(String) = [] of String
    # JSON Schema (Draft 2020-12) describing the structured output shape.
    getter schema : JSON::Any = JSON::Any.new(nil)
    # Instruction primer sent to the model.
    getter system_prompt : String = ""
    # Optional mustache-style template merged with caller-supplied context.
    getter context_template : String?
    # Strategy for merging per-batch outputs across paginated calls.
    getter merge_mode : MergeMode = MergeMode::ObjectMerge
    # Default call mode suggested for this preset; heuristics may override.
    getter preferred_call_mode : CallMode = CallMode::TextOnly
    # When true, the prompt asks the model to wrap each field as
    # `{value, page, bbox, confidence}` for downstream citation overlays.
    getter emit_citations : Bool = false
    # Optional bundled sample (input file + reference output) for preview.
    getter sample : PresetSample?
    # Stable sha256 fingerprint of the canonical preset file contents.
    #
    # Populated at registry load — not present in the on-disk JSON files.
    # Used as a cache-invalidation token by the worker pipeline.
    getter fingerprint : String = ""
    def initialize(
      @id : String = "",
      @version : String = "",
      @schema_name : String = "",
      @description : String = "",
      @category : PresetCategory = PresetCategory::Finance,
      @tags : Array(String) = [] of String,
      @schema : JSON::Any = JSON::Any.new(nil),
      @system_prompt : String = "",
      @context_template : String? = nil,
      @merge_mode : MergeMode = MergeMode::ObjectMerge,
      @preferred_call_mode : CallMode = CallMode::TextOnly,
      @emit_citations : Bool = false,
      @sample : PresetSample? = nil,
      @fingerprint : String = ""
    )
    end
  end

  # Lightweight projection of [`Preset`] used by the registry list endpoint
  # (omits the full schema and prompt to keep the payload small).
  class PresetSummary
    include JSON::Serializable
    # Preset identifier matching [`Preset::id`].
    getter id : String = ""
    # Preset version matching [`Preset::version`].
    getter version : String = ""
    # Schema name matching [`Preset::schema_name`].
    getter schema_name : String = ""
    # One-line preset description.
    getter description : String = ""
    # Top-level category.
    getter category : PresetCategory = PresetCategory::Finance
    # Free-form tags.
    getter tags : Array(String) = [] of String
    # Default call mode.
    getter preferred_call_mode : CallMode = CallMode::TextOnly
    # Whether the preset prompts the model for citations.
    getter emit_citations : Bool = false
    # Stable fingerprint matching [`Preset::fingerprint`].
    getter fingerprint : String = ""
    def initialize(
      @id : String = "",
      @version : String = "",
      @schema_name : String = "",
      @description : String = "",
      @category : PresetCategory = PresetCategory::Finance,
      @tags : Array(String) = [] of String,
      @preferred_call_mode : CallMode = CallMode::TextOnly,
      @emit_citations : Bool = false,
      @fingerprint : String = ""
    )
    end
  end

  # A single doctor verdict: what was checked, the outcome, and why.
  class DoctorCheck
    include JSON::Serializable
    # Check identifier, e.g. `ocr.tesseract` or `layout.rtdetr`.
    getter name : String = ""
    # Pass / warn / fail / skip verdict.
    getter status : ProbeStatus = ProbeStatus::Pass
    # One-line reason or detail (e.g. missing language, resolved path, error).
    getter message : String = ""
    def initialize(
      @name : String = "",
      @status : ProbeStatus = ProbeStatus::Pass,
      @message : String = ""
    )
    end
  end

  # Aggregate doctor report over all configured backends and settings.
  class DoctorReport
    include JSON::Serializable
    # Individual check verdicts, in execution order.
    getter checks : Array(DoctorCheck) = [] of DoctorCheck
    def initialize(
      @checks : Array(DoctorCheck) = [] of DoctorCheck
    )
    end
  end

  # Configuration for PaddleOCR backend.
  #
  # Configures PaddleOCR text detection and recognition with multi-language support.
  # Uses a builder pattern for convenient configuration.
  class PaddleOcrConfig
    include JSON::Serializable
    # Language code (e.g., "en", "ch", "jpn", "kor", "deu", "fra")
    getter language : String = ""
    # Optional Hugging Face Hub cache root for model files.
    #
    # When unset, the standard `HF_HUB_CACHE`, legacy
    # `HUGGINGFACE_HUB_CACHE`, and `HF_HOME` conventions are used.
    getter cache_dir : String?
    # Enable angle classification for rotated text (default: false).
    # Can misfire on short text regions, rotating crops incorrectly before recognition.
    getter use_angle_cls : Bool = false
    # Enable table structure detection (default: false)
    getter enable_table_detection : Bool = false
    # Database threshold for text detection (default: 0.3)
    # Range: 0.0-1.0, higher values require more confident detections
    getter det_db_thresh : Float32 = 0.0
    # Box threshold for text bounding box refinement (default: 0.5)
    # Range: 0.0-1.0
    getter det_db_box_thresh : Float32 = 0.0
    # Unclip ratio for expanding text bounding boxes (default: 1.6)
    # Controls the expansion of detected text regions
    getter det_db_unclip_ratio : Float32 = 0.0
    # Maximum side length for detection image (default: 1024)
    # Larger images may be resized to this limit for faster inference
    getter det_limit_side_len : UInt32 = 0
    # Batch size for recognition inference (default: 6)
    # Number of text regions to process simultaneously
    getter rec_batch_num : UInt32 = 0
    # Padding in pixels added around the image before detection (default: 10).
    # Large values can include surrounding content like table gridlines.
    getter padding : UInt32 = 0
    # Minimum recognition confidence score for text lines (default: 0.5).
    # Text regions with recognition confidence below this threshold are discarded.
    # Matches PaddleOCR Python's `drop_score` parameter.
    # Range: 0.0-1.0
    getter drop_score : Float32 = 0.0
    # Model tier controlling detection/recognition model size and accuracy trade-off.
    #
    # For PP-OCRv5 (`model_version = "pp-ocrv5"`):
    # - `"mobile"` (default): Lightweight models (~4.5MB detection, ~16.5MB recognition), fast download and inference
    # - `"server"`: Large, high-accuracy models (~88MB detection, ~84MB recognition), best for GPU or complex documents
    #
    # For PP-OCRv6 (`model_version = "pp-ocrv6"`): `"medium"` (default), `"small"`, or `"tiny"`.
    # A legacy `"mobile"`/`"server"` tier under v6 falls back to `"medium"`.
    getter model_tier : String = ""
    # Model generation: `"pp-ocrv6"` (default) or `"pp-ocrv5"`.
    #
    # PP-OCRv6 adds a unified CJK+Latin+JA/KO recognition model with `medium`/`small`/`tiny`
    # tiers (see `model_tier`). Scripts outside the v6 unified coverage (Arabic, Cyrillic,
    # Devanagari, Greek, Tamil, Telugu, Thai) transparently fall back to the PP-OCRv5
    # per-script recognition models. Defaults to `"pp-ocrv6"`; the default `model_tier`
    # (`"mobile"`) resolves to the v6 `"medium"` tier. Select `"pp-ocrv5"` to pin the
    # legacy per-script/unified fleet.
    getter model_version : String = ""
    # Explicit inference engine choice.
    #
    # `None` (the default) resolves to the compiled default: `ort` when the
    # `paddle-ocr-ort` feature is compiled in, otherwise `tract`. An explicit choice
    # is validated against the compiled features when the OCR engine is constructed
    # (see `crate::paddle_ocr::backend::effective_backend`); requesting an engine
    # whose feature is not compiled in is a clear configuration error rather than a
    # silent fallback.
    getter inference_backend : PaddleInferenceBackend?
    def initialize(
      @language : String = "",
      @cache_dir : String? = nil,
      @use_angle_cls : Bool = false,
      @enable_table_detection : Bool = false,
      @det_db_thresh : Float32 = 0.0,
      @det_db_box_thresh : Float32 = 0.0,
      @det_db_unclip_ratio : Float32 = 0.0,
      @det_limit_side_len : UInt32 = 0,
      @rec_batch_num : UInt32 = 0,
      @padding : UInt32 = 0,
      @drop_score : Float32 = 0.0,
      @model_tier : String = "",
      @model_version : String = "",
      @inference_backend : PaddleInferenceBackend? = nil
    )
    end
  end

  # Combined paths to all models needed for OCR (backward compatibility).
  class ModelPaths
    include JSON::Serializable
    # Exact path to the detection ONNX model in the Hugging Face snapshot.
    getter det_model : String
    # Exact path to the classification ONNX model in the Hugging Face snapshot.
    getter cls_model : String
    # Exact path to the recognition ONNX model in the Hugging Face snapshot.
    getter rec_model : String
    # Path to the character dictionary file.
    getter dict_file : String
    def initialize(
      @det_model : String? = nil,
      @cls_model : String? = nil,
      @rec_model : String? = nil,
      @dict_file : String? = nil
    )
    end
  end

  # Document orientation detection result.
  class OrientationResult
    include JSON::Serializable
    # Detected orientation in degrees (0, 90, 180, or 270).
    getter degrees : UInt32 = 0
    # Confidence score (0.0-1.0).
    getter confidence : Float32 = 0.0
    def initialize(
      @degrees : UInt32 = 0,
      @confidence : Float32 = 0.0
    )
    end
  end

  # Bounding box in original image coordinates (x1, y1) top-left, (x2, y2) bottom-right.
  class BBox
    include JSON::Serializable
    # Left edge (x-coordinate of the top-left corner).
    getter x1 : Float32 = 0.0
    # Top edge (y-coordinate of the top-left corner).
    getter y1 : Float32 = 0.0
    # Right edge (x-coordinate of the bottom-right corner).
    getter x2 : Float32 = 0.0
    # Bottom edge (y-coordinate of the bottom-right corner).
    getter y2 : Float32 = 0.0
    def initialize(
      @x1 : Float32 = 0.0,
      @y1 : Float32 = 0.0,
      @x2 : Float32 = 0.0,
      @y2 : Float32 = 0.0
    )
    end
  end

  # A single layout detection result.
  class LayoutDetection
    include JSON::Serializable
    # Detected layout class (e.g. `Table`, `Text`, `Title`).
    getter class_name : LayoutClass = LayoutClass::Caption
    # Detection confidence score in `[0.0, 1.0]`.
    getter confidence : Float32 = 0.0
    # Bounding box in image pixel coordinates.
    getter bbox : BBox = BBox.from_json("{}")
    def initialize(
      @class_name : LayoutClass = LayoutClass::Caption,
      @confidence : Float32 = 0.0,
      @bbox : BBox = BBox.from_json("{}")
    )
    end
  end

  # Pre-computed table markdown for a table detection region.
  #
  # Produced by the TATR-based table structure recognizer and surfaced as part of
  # layout-aware OCR results.  The struct lives here (under `layout-types`, pure-Rust)
  # so that consumers who do not enable `layout-detection` (ORT) can still reference
  # the type in their own code.
  class RecognizedTable
    include JSON::Serializable
    # Detection bbox that this table corresponds to (for matching).
    getter detection_bbox : BBox = BBox.from_json("{}")
    # Table cells as a 2D vector (rows × columns).
    getter cells : Array(Array(String)) = [] of Array(String)
    # Rendered markdown table.
    getter markdown : String = ""
    def initialize(
      @detection_bbox : BBox = BBox.from_json("{}"),
      @cells : Array(Array(String)) = [] of Array(String),
      @markdown : String = ""
    )
    end
  end

  # Page-level detection result containing all detections and page metadata.
  class DetectionResult
    include JSON::Serializable
    # Page width in pixels (as seen by the model).
    getter page_width : UInt32 = 0
    # Page height in pixels (as seen by the model).
    getter page_height : UInt32 = 0
    # All layout detections on this page after postprocessing.
    getter detections : Array(LayoutDetection) = [] of LayoutDetection
    def initialize(
      @page_width : UInt32 = 0,
      @page_height : UInt32 = 0,
      @detections : Array(LayoutDetection) = [] of LayoutDetection
    )
    end
  end

  # Embedded file descriptor extracted from the PDF name tree.
  class EmbeddedFile
    include JSON::Serializable
    # The filename as stored in the PDF name tree.
    getter name : String = ""
    # Raw file bytes from the embedded stream (already decompressed by lopdf).
    getter data : Array(UInt8) = [] of UInt8
    # Compressed byte count of the original stream (before decompression).
    #
    # Used by callers to compute the decompression ratio and detect zip-bomb-style
    # attacks that embed a tiny compressed stream expanding to gigabytes of data.
    getter compressed_size : UInt64 = 0
    # MIME type if specified in the filespec, otherwise `None`.
    getter mime_type : String?
    def initialize(
      @name : String = "",
      @data : Bytes = [] of UInt8,
      @compressed_size : UInt64 = 0,
      @mime_type : String? = nil
    )
    end
  end

  # PDF-specific metadata.
  #
  # Contains metadata fields specific to PDF documents that are not in the common
  # `Metadata` structure. Common fields like title, authors, keywords, and dates
  # are at the `Metadata` level.
  class PdfMetadata
    include JSON::Serializable
    # PDF version (e.g., "1.7", "2.0")
    getter pdf_version : String?
    # PDF producer (application that created the PDF)
    getter producer : String?
    # Whether the PDF is encrypted/password-protected
    getter is_encrypted : Bool?
    # First page width in points (1/72 inch)
    getter width : Int64?
    # First page height in points (1/72 inch)
    getter height : Int64?
    # Total number of pages in the PDF document
    getter page_count : UInt32?
    # How strongly the document's most scan-like page resembles a scan, in `[0.0, 1.0]`.
    #
    # `None` when the document could not be inspected. A full-page raster with no
    # visible text scores at least `0.85`; a born-digital slide with a full-bleed
    # background image scores `0.50`.
    getter scanned_confidence : Float32?
    # Pages that look like scans (1-indexed), using the default confidence threshold.
    #
    # `None` when the document could not be inspected; empty when no page qualifies.
    getter scanned_pages : Array(UInt32)?
    # Pages the `auto` layout strategy skipped (1-indexed).
    #
    # `None` unless layout detection ran with `LayoutStrategy::Auto`; empty
    # when the gate selected every page.
    getter layout_gated_pages : Array(UInt32)?
    # Why the `auto` layout gate selected or skipped each page.
    #
    # Index `i` is page `i + 1`. Snake_case values such as `multi_column`,
    # `table_grid`, or `plain_text` (the skip reason). `None` unless layout
    # detection ran with `LayoutStrategy::Auto`.
    getter layout_gate_reasons : Array(String)?
    def initialize(
      @pdf_version : String? = nil,
      @producer : String? = nil,
      @is_encrypted : Bool? = nil,
      @width : Int64? = nil,
      @height : Int64? = nil,
      @page_count : UInt32? = nil,
      @scanned_confidence : Float32? = nil,
      @scanned_pages : Array(UInt32)? = nil,
      @layout_gated_pages : Array(UInt32)? = nil,
      @layout_gate_reasons : Array(String)? = nil
    )
    end
  end

  # Chunk-classification enrichment knob: how to multi-label individual chunks.
  #
  # Operates on `ExtractedDocument::chunks` in place — the caller must have
  # already produced chunks (e.g. via `ExtractionConfig::chunking`) for this
  # stage to have any effect; a document with no chunks is a no-op.
  class ChunkClassificationEnrichmentConfig
    include JSON::Serializable
    # Label-definition set and LLM/batching settings for the chunk-classification stage.
    getter config : ChunkClassificationConfig = ChunkClassificationConfig.from_json("{}")
    def initialize(
      @config : ChunkClassificationConfig = ChunkClassificationConfig.from_json("{}")
    )
    end
  end

  # Proxy configuration for HTTP requests.
  class ProxyConfig
    include JSON::Serializable
    # Proxy URL (e.g. "http://proxy:8080", "socks5://proxy:1080").
    getter url : String = ""
    # Optional username for proxy authentication.
    getter username : String?
    # Optional password for proxy authentication.
    getter password : String?
    def initialize(
      @url : String = "",
      @username : String? = nil,
      @password : String? = nil
    )
    end
  end

  # Content extraction and conversion configuration.
  #
  # Controls how HTML is converted to the output format. Uses
  # html-to-markdown-rs as the conversion engine for all formats
  # (markdown, plain text, djot).
  class ContentConfig
    include JSON::Serializable
    # Output format: `"markdown"` (default), `"plain"`, `"djot"`.
    getter output_format : String = "markdown"
    # Preprocessing aggressiveness: `"minimal"`, `"standard"` (default), `"aggressive"`.
    #
    # - Minimal: only scripts/styles removed.
    # - Standard: also removes nav, nav-hinted headers/footers/asides, forms.
    # - Aggressive: removes all footers/asides unconditionally.
    getter preprocessing_preset : String = "standard"
    # Remove navigation elements (nav, breadcrumbs, menus). Default: `true`.
    getter remove_navigation : Bool = true
    # Remove form elements. Default: `true`.
    getter remove_forms : Bool = true
    # HTML tag names to strip (render children only, remove the tag wrapper).
    # Default: `["noscript"]`.
    getter strip_tags : Array(String) = [] of String
    # HTML tag names to preserve as raw HTML in output.
    getter preserve_tags : Array(String) = [] of String
    # CSS selectors for elements to exclude entirely (element + all content).
    #
    # Unlike `strip_tags` (which removes the wrapper but keeps children),
    # excluded elements and all descendants are dropped. Supports CSS selectors:
    # `.class`, `#id`, `[attribute]`, compound selectors.
    #
    # Example: `[".cookie-banner", "#ad-container", "[role='complementary']"]`
    getter exclude_selectors : Array(String) = [] of String
    # Skip image elements in output. Default: `false`.
    getter skip_images : Bool = false
    # Max DOM traversal depth. Prevents stack overflow on deeply nested HTML.
    getter max_depth : UInt64?
    # Enable line wrapping. Default: `false`.
    getter wrap : Bool = false
    # Wrap width when `wrap` is enabled. Default: `80`.
    getter wrap_width : UInt64 = 80
    # Include document structure tree in output. Default: `true`.
    getter include_document_structure : Bool = true
    def initialize(
      @output_format : String = "markdown",
      @preprocessing_preset : String = "standard",
      @remove_navigation : Bool = true,
      @remove_forms : Bool = true,
      @strip_tags : Array(String) = [] of String,
      @preserve_tags : Array(String) = [] of String,
      @exclude_selectors : Array(String) = [] of String,
      @skip_images : Bool = false,
      @max_depth : UInt64? = nil,
      @wrap : Bool = false,
      @wrap_width : UInt64 = 80,
      @include_document_structure : Bool = true
    )
    end
  end

  # Browser fallback configuration.
  class BrowserConfig
    include JSON::Serializable
    # When to use the headless browser fallback.
    getter mode : BrowserMode = BrowserMode::Auto
    # Browser backend used to render JavaScript-heavy pages.
    getter backend : BrowserBackend = BrowserBackend::Chromiumoxide
    # CDP WebSocket endpoint for connecting to an external browser instance.
    getter endpoint : String?
    # Timeout for browser page load and rendering (in milliseconds when serialized).
    getter timeout : Int64 = 30000
    # Wait strategy after browser navigation.
    getter wait : BrowserWait = BrowserWait::NetworkIdle
    # CSS selector to wait for when `wait` is `Selector`.
    getter wait_selector : String?
    # Extra time to wait after the wait condition is met.
    getter extra_wait : Int64?
    # Proxy for browser fetches. Overrides `CrawlConfig.proxy` when set.
    # Native backend supports http/https only (no SOCKS5).
    getter proxy : ProxyConfig?
    # URL patterns to block before the network request fires. Supports `*`
    # wildcards. Useful for skipping ads/analytics/large images. Honored by
    # `BrowserBackend::Native`; chromiumoxide ignores this field today.
    getter block_url_patterns : Array(String) = [] of String
    # JavaScript snippet evaluated after navigation completes.
    #
    # Scraping captures the native backend result in `ScrapeResult.browser.eval_result`.
    # Interactions run this script before page actions on both browser backends but do
    # not include the script result in `InteractionResult`.
    getter eval_script : String?
    # User-agent used when fetching robots.txt. Defaults to `BrowserConfig.user_agent`
    # (or crawlberg's default) if unset. Native only.
    getter robots_user_agent : String?
    # Capture the full network event stream into the result. Default false
    # (only the document event is captured). Native only.
    getter capture_network_events : Bool = false
    # Enable session affinity: reuse chromiumoxide Pages for same-domain
    # requests so cookies + fingerprint + solved challenges persist.
    # Default: true. When false, each request gets a fresh Page.
    getter session_affinity : Bool = true
    def initialize(
      @mode : BrowserMode = BrowserMode::Auto,
      @backend : BrowserBackend = BrowserBackend::Chromiumoxide,
      @endpoint : String? = nil,
      @timeout : Int64 = 30000,
      @wait : BrowserWait = BrowserWait::NetworkIdle,
      @wait_selector : String? = nil,
      @extra_wait : Int64? = nil,
      @proxy : ProxyConfig? = nil,
      @block_url_patterns : Array(String) = [] of String,
      @eval_script : String? = nil,
      @robots_user_agent : String? = nil,
      @capture_network_events : Bool = false,
      @session_affinity : Bool = true
    )
    end
  end

  # Configuration for crawl, scrape, and map operations.
  class CrawlConfig
    include JSON::Serializable
    # Maximum crawl depth (number of link hops from the start URL).
    getter max_depth : UInt64?
    # Maximum number of pages to crawl.
    getter max_pages : UInt64?
    # Maximum number of concurrent requests.
    getter max_concurrent : UInt64?
    # Whether to respect robots.txt directives.
    getter respect_robots_txt : Bool = false
    # When true, HTTP-level error responses (404 NotFound, 403 Forbidden, WAF blocks)
    # are surfaced as `ScrapeResult` records with the matching `status_code` rather
    # than raised as `CrawlError`. Default `false` preserves the historical
    # throw-on-error contract for direct fetches. Independently of this flag,
    # 404s reached at the end of a redirect chain are *always* surfaced softly —
    # the user opted into redirect-following, so receiving a 404 there is part of
    # the normal flow rather than an unexpected error.
    getter soft_http_errors : Bool = false
    # Custom user-agent string.
    getter user_agent : String?
    # Whether to restrict crawling to the same domain.
    getter stay_on_domain : Bool = false
    # Whether to allow subdomains when `stay_on_domain` is true.
    getter allow_subdomains : Bool = false
    # Regex patterns for paths to include during crawling.
    getter include_paths : Array(String) = [] of String
    # Regex patterns for paths to exclude during crawling.
    getter exclude_paths : Array(String) = [] of String
    # Custom HTTP headers to send with each request.
    getter custom_headers : Hash(String, String) = {} of String => String
    # Timeout for individual HTTP requests (in milliseconds when serialized).
    getter request_timeout : Int64 = 30000
    # Per-domain rate limit in milliseconds. When set, enforces a minimum delay
    # between requests to the same domain. Defaults to 200ms when `None`.
    getter rate_limit_ms : UInt64?
    # Maximum number of redirects to follow.
    getter max_redirects : UInt64 = 10
    # Number of retry attempts for failed requests.
    getter retry_count : UInt64 = 0
    # HTTP status codes that should trigger a retry.
    getter retry_codes : Array(UInt16) = [] of UInt16
    # Whether to enable cookie handling.
    getter cookies_enabled : Bool = false
    # Authentication configuration.
    getter auth : AuthConfig?
    # Maximum response body size in bytes.
    getter max_body_size : UInt64?
    # CSS selectors for tags to remove from HTML before processing.
    getter remove_tags : Array(String) = [] of String
    # Content extraction and conversion configuration.
    getter content : ContentConfig = ContentConfig.from_json("{}")
    # Maximum number of URLs to return from a map operation.
    getter map_limit : UInt64?
    # Search filter for map results (case-insensitive substring match on URLs).
    getter map_search : String?
    # Whether to download assets (CSS, JS, images, etc.) from the page.
    getter download_assets : Bool = false
    # Filter for asset categories to download.
    getter asset_types : Array(AssetCategory) = [] of AssetCategory
    # Maximum size in bytes for individual asset downloads.
    getter max_asset_size : UInt64?
    # Browser configuration.
    getter browser : BrowserConfig = BrowserConfig.from_json("{}")
    # Proxy configuration for HTTP requests.
    getter proxy : ProxyConfig?
    # List of user-agent strings for rotation. If non-empty, overrides `user_agent`.
    getter user_agents : Array(String) = [] of String
    # Whether to capture a screenshot when using the browser.
    getter capture_screenshot : Bool = false
    # Re-enqueue discovered `LinkType::Document` URLs into the crawl frontier so
    # the crawl follows links *from* document pages (PDFs, etc.) as it would
    # from HTML pages. Default: `false` (documents terminate at materialisation).
    getter follow_document_urls : Bool = false
    # Maximum document-depth (from the seed URL through document links only)
    # when `follow_document_urls` is true. `None` means inherit `max_depth`.
    # Independent of `max_depth`: a document URL is enqueued only if BOTH the
    # outer `max_depth` and (if set) `document_url_depth` permit it.
    getter document_url_depth : UInt32?
    # Whether to download non-HTML documents (PDF, DOCX, images, code, etc.) instead of skipping them.
    getter download_documents : Bool = true
    # Maximum size in bytes for document downloads. Defaults to 50 MB.
    getter document_max_size : UInt64?
    # Allowlist of MIME types to download. If empty, uses built-in defaults.
    getter document_mime_types : Array(String) = [] of String
    # Path to write WARC output. If `None`, WARC output is disabled.
    getter warc_output : String?
    # Named browser profile for persistent sessions (cookies, localStorage).
    getter browser_profile : String?
    # Whether to save changes back to the browser profile on exit.
    getter save_browser_profile : Bool = false
    # SSRF policy for outbound network requests. Default: deny private networks,
    # allow http/https only, max 5 redirects.
    #
    # Phase 1: `deny_private` and `max_redirects` are exposed to all language
    # bindings. `allowlist` is skipped (see `SsrfPolicy` fields) and will be
    # added in a follow-up when `HostMatcher`'s tagged-enum FFI form is decided.
    getter ssrf : SsrfPolicy = SsrfPolicy.from_json("{}")
    def initialize(
      @max_depth : UInt64? = nil,
      @max_pages : UInt64? = nil,
      @max_concurrent : UInt64? = nil,
      @respect_robots_txt : Bool = false,
      @soft_http_errors : Bool = false,
      @user_agent : String? = nil,
      @stay_on_domain : Bool = false,
      @allow_subdomains : Bool = false,
      @include_paths : Array(String) = [] of String,
      @exclude_paths : Array(String) = [] of String,
      @custom_headers : Hash(String, String) = {} of String => String,
      @request_timeout : Int64 = 30000,
      @rate_limit_ms : UInt64? = nil,
      @max_redirects : UInt64 = 10,
      @retry_count : UInt64 = 0,
      @retry_codes : Array(UInt16) = [] of UInt16,
      @cookies_enabled : Bool = false,
      @auth : AuthConfig? = nil,
      @max_body_size : UInt64? = nil,
      @remove_tags : Array(String) = [] of String,
      @content : ContentConfig = ContentConfig.from_json("{}"),
      @map_limit : UInt64? = nil,
      @map_search : String? = nil,
      @download_assets : Bool = false,
      @asset_types : Array(AssetCategory) = [] of AssetCategory,
      @max_asset_size : UInt64? = nil,
      @browser : BrowserConfig = BrowserConfig.from_json("{}"),
      @proxy : ProxyConfig? = nil,
      @user_agents : Array(String) = [] of String,
      @capture_screenshot : Bool = false,
      @follow_document_urls : Bool = false,
      @document_url_depth : UInt32? = nil,
      @download_documents : Bool = true,
      @document_max_size : UInt64? = nil,
      @document_mime_types : Array(String) = [] of String,
      @warc_output : String? = nil,
      @browser_profile : String? = nil,
      @save_browser_profile : Bool = false,
      @ssrf : SsrfPolicy = SsrfPolicy.from_json("{}")
    )
    end
  end

  # A URL entry from a sitemap.
  class SitemapUrl
    include JSON::Serializable
    # The URL.
    getter url : String = ""
    # The last modification date, if present.
    getter lastmod : String?
    # The change frequency, if present.
    getter changefreq : String?
    # The priority, if present.
    getter priority : String?
    def initialize(
      @url : String = "",
      @lastmod : String? = nil,
      @changefreq : String? = nil,
      @priority : String? = nil
    )
    end
  end

  # The result of a map operation, containing discovered URLs.
  class MapResult
    include JSON::Serializable
    # The list of discovered URLs.
    getter urls : Array(SitemapUrl) = [] of SitemapUrl
    def initialize(
      @urls : Array(SitemapUrl) = [] of SitemapUrl
    )
    end
  end

  # SSRF policy configuration.
  class SsrfPolicy
    include JSON::Serializable
    # If true, reject URLs that resolve to private/metadata IP ranges.
    getter deny_private : Bool = true
    # Maximum number of HTTP redirects to follow during validation.
    getter max_redirects : UInt8 = 5
    def initialize(
      @deny_private : Bool = true,
      @max_redirects : UInt8 = 5
    )
    end
  end

  # Main conversion options for HTML to Markdown conversion.
  #
  # Use [`ConversionOptions::builder()`] to construct, or [`Default::default()`] for defaults.
  class ConversionOptions
    include JSON::Serializable
    # Heading style to use in Markdown output (ATX `#` or Setext underline).
    getter heading_style : HeadingStyle = HeadingStyle::Atx
    # How to indent nested list items (spaces or tab).
    getter list_indent_type : ListIndentType = ListIndentType::Spaces
    # Number of spaces (or tabs) to use for each level of list indentation.
    getter list_indent_width : UInt64 = 2
    # Bullet character(s) to use for unordered list items (e.g. `"-"`, `"*"`).
    getter bullets : String = "-*+"
    # Character used for bold/italic emphasis markers (`*` or `_`).
    getter strong_em_symbol : String = "*"
    # Escape `*` characters in plain text to avoid unintended bold/italic.
    getter escape_asterisks : Bool = false
    # Escape `_` characters in plain text to avoid unintended bold/italic.
    getter escape_underscores : Bool = false
    # Escape miscellaneous Markdown metacharacters (`[]()#` etc.) in plain text.
    getter escape_misc : Bool = false
    # Escape ASCII characters that have special meaning in certain Markdown dialects.
    getter escape_ascii : Bool = false
    # Default language annotation for fenced code blocks that have no language hint.
    getter code_language : String = ""
    # Automatically convert bare URLs into Markdown autolinks.
    getter autolinks : Bool = true
    # Emit a default title when no `<title>` tag is present.
    getter default_title : Bool = false
    # Render `<br>` elements inside table cells as literal line breaks.
    getter br_in_tables : Bool = false
    # Emit tables without column padding (compact GFM format).
    #
    # When `true`, column widths are not computed and cells are emitted with
    # no trailing spaces. Separator rows use exactly `---` per column.
    # Produces token-efficient output suitable for RAG / LLM contexts.
    #
    # Default `false` (aligned padding preserved).
    getter compact_tables : Bool = false
    # Style used for `<mark>` / highlighted text (e.g. `==text==`).
    getter highlight_style : HighlightStyle = HighlightStyle::DoubleEqual
    # Populate `result.metadata` with `<head>` / `<meta>` extraction
    # (title, description, Open Graph, Twitter Card, JSON-LD, …).
    #
    # Default `true`. Disabling skips the metadata pass only — table
    # extraction into `result.tables` runs unconditionally.
    getter extract_metadata : Bool = true
    # Controls how whitespace sequences are normalised in the converted output.
    #
    # - [`WhitespaceMode::Normalized`] (default) — collapses consecutive whitespace characters
    #   (spaces, tabs, newlines) to a single space, matching browser rendering behaviour.
    # - [`WhitespaceMode::Strict`] — preserves all whitespace exactly as it appears in the
    #   source HTML, including runs of spaces and embedded newlines.
    #
    # Choose `Strict` only when the source HTML uses deliberate whitespace (e.g. pre-formatted
    # content outside `<pre>` tags). For most documents `Normalized` produces cleaner output.
    getter whitespace_mode : WhitespaceMode = WhitespaceMode::Normalized
    # Strip all newlines from the output, producing a single-line result.
    getter strip_newlines : Bool = false
    # Wrap long lines at [`wrap_width`](Self::wrap_width) characters.
    getter wrap : Bool = false
    # Maximum output line width in characters when [`wrap`](Self::wrap) is `true` (default `80`).
    #
    # Lines are broken at word boundaries so that no line exceeds this length. A value of `0`
    # is treated as "no limit" — equivalent to leaving [`wrap`](Self::wrap) disabled. Has no
    # effect when `wrap` is `false`.
    getter wrap_width : UInt64 = 80
    # Treat the entire document as inline content (no block-level wrappers).
    getter convert_as_inline : Bool = false
    # Markdown notation for subscript text (e.g. `"~"`).
    getter sub_symbol : String = ""
    # Markdown notation for superscript text (e.g. `"^"`).
    getter sup_symbol : String = ""
    # How to encode hard line breaks (`<br>`) in Markdown.
    getter newline_style : NewlineStyle = NewlineStyle::Spaces
    # Style used for fenced code blocks (backticks or tilde).
    getter code_block_style : CodeBlockStyle = CodeBlockStyle::Backticks
    # HTML tag names whose `<img>` children are kept inline instead of block.
    getter keep_inline_images_in : Array(String) = [] of String
    # Options for the HTML pre-processing pass applied before conversion begins.
    #
    # Pre-processing runs before the HTML is handed to the converter and can perform operations
    # such as unwrapping redundant wrapper elements, removing tracking pixels, and normalising
    # vendor-specific markup. See [`PreprocessingOptions`] for the full set of knobs.
    #
    # Defaults to [`PreprocessingOptions::default()`], which enables the standard cleaning
    # passes. Set individual fields on [`PreprocessingOptions`] (or construct via
    # [`ConversionOptions::builder`]) to opt in or out of specific passes.
    getter preprocessing : PreprocessingOptions = PreprocessingOptions.from_json("{}")
    # Expected character encoding of the input HTML (default `"utf-8"`).
    getter encoding : String = "utf-8"
    # Emit debug information during conversion.
    getter debug : Bool = false
    # HTML tag names whose content is stripped from the output entirely.
    getter strip_tags : Array(String) = [] of String
    # HTML tag names that are preserved verbatim in the output.
    getter preserve_tags : Array(String) = [] of String
    # Skip conversion of `<img>` elements (omit images from output).
    getter skip_images : Bool = false
    # URL encoding strategy for link and image destinations.
    #
    # Controls how special characters in URL destinations are escaped:
    # - [`UrlEscapeStyle::Angle`] (default) — wraps the destination in angle brackets when it
    #   contains spaces or newlines. Some parsers misinterpret `>` inside such a destination.
    # - [`UrlEscapeStyle::Percent`] — percent-encodes every character that is not an RFC 3986
    #   unreserved character or `/`, producing a destination that all Markdown parsers handle
    #   correctly even when the URL contains `<`, `>`, spaces, or parentheses.
    getter url_escape_style : UrlEscapeStyle = UrlEscapeStyle::Angle
    # Link rendering style (inline or reference).
    getter link_style : LinkStyle = LinkStyle::Inline
    # Maximum decoded image size in bytes (default 5MB).
    getter max_image_size : UInt64 = 5242880
    # Capture SVG elements as images.
    getter capture_svg : Bool = false
    # Infer image dimensions from data.
    getter infer_dimensions : Bool = true
    # Maximum DOM traversal depth.
    #
    # `None` uses the library's internal native-stack safety limit. Explicit
    # values above that safety limit are clamped to prevent process-aborting
    # stack overflows on pathologically deep DOM trees.
    getter max_depth : UInt64?
    # CSS selectors for elements to exclude entirely (element + all content).
    #
    # Unlike `strip_tags` (which removes the tag wrapper but keeps children),
    # excluded elements and all their descendants are dropped from the output.
    # Supports any CSS selector that `tl` supports: tag names, `.class`,
    # `#id`, `[attribute]`, etc.
    #
    # Invalid selectors are silently skipped at conversion time.
    #
    # Example: `vec![".cookie-banner".into(), "#ad-container".into(), "[role='complementary']".into()]`
    getter exclude_selectors : Array(String) = [] of String
    def initialize(
      @heading_style : HeadingStyle = HeadingStyle::Atx,
      @list_indent_type : ListIndentType = ListIndentType::Spaces,
      @list_indent_width : UInt64 = 2,
      @bullets : String = "-*+",
      @strong_em_symbol : String = "*",
      @escape_asterisks : Bool = false,
      @escape_underscores : Bool = false,
      @escape_misc : Bool = false,
      @escape_ascii : Bool = false,
      @code_language : String = "",
      @autolinks : Bool = true,
      @default_title : Bool = false,
      @br_in_tables : Bool = false,
      @compact_tables : Bool = false,
      @highlight_style : HighlightStyle = HighlightStyle::DoubleEqual,
      @extract_metadata : Bool = true,
      @whitespace_mode : WhitespaceMode = WhitespaceMode::Normalized,
      @strip_newlines : Bool = false,
      @wrap : Bool = false,
      @wrap_width : UInt64 = 80,
      @convert_as_inline : Bool = false,
      @sub_symbol : String = "",
      @sup_symbol : String = "",
      @newline_style : NewlineStyle = NewlineStyle::Spaces,
      @code_block_style : CodeBlockStyle = CodeBlockStyle::Backticks,
      @keep_inline_images_in : Array(String) = [] of String,
      @preprocessing : PreprocessingOptions = PreprocessingOptions.from_json("{}"),
      @encoding : String = "utf-8",
      @debug : Bool = false,
      @strip_tags : Array(String) = [] of String,
      @preserve_tags : Array(String) = [] of String,
      @skip_images : Bool = false,
      @url_escape_style : UrlEscapeStyle = UrlEscapeStyle::Angle,
      @link_style : LinkStyle = LinkStyle::Inline,
      @max_image_size : UInt64 = 5242880,
      @capture_svg : Bool = false,
      @infer_dimensions : Bool = true,
      @max_depth : UInt64? = nil,
      @exclude_selectors : Array(String) = [] of String
    )
    end
  end

  # HTML preprocessing options for document cleanup before conversion.
  class PreprocessingOptions
    include JSON::Serializable
    # Enable HTML preprocessing globally
    getter enabled : Bool = true
    # Preprocessing preset level (Minimal, Standard, Aggressive)
    getter preset : PreprocessingPreset = PreprocessingPreset::Standard
    # Remove navigation elements (nav, breadcrumbs, menus, sidebars)
    getter remove_navigation : Bool = true
    # Remove form elements (forms, inputs, buttons, etc.)
    getter remove_forms : Bool = true
    def initialize(
      @enabled : Bool = true,
      @preset : PreprocessingPreset = PreprocessingPreset::Standard,
      @remove_navigation : Bool = true,
      @remove_forms : Bool = true
    )
    end
  end

  # Main error type for all Xberg operations.
  #
  # All errors in Xberg use this enum, which preserves error chains
  # and provides context for debugging.
  #
  # # Variants
  #
  # - `Io` - File system and I/O errors (always bubble up)
  # - `Parsing` - Document parsing errors (corrupt files, unsupported features)
  # - `Ocr` - OCR processing errors
  # - `Validation` - Input validation errors (invalid paths, config, parameters)
  # - `Cache` - Cache operation errors (non-fatal, can be ignored)
  # - `ImageProcessing` - Image manipulation errors
  # - `Serialization` - JSON/MessagePack serialization errors
  # - `MissingDependency` - Missing optional dependencies (tesseract, etc.)
  # - `Plugin` - Plugin-specific errors
  # - `LockPoisoned` - Mutex/RwLock poisoning (should not happen in normal operation)
  # - `UnsupportedFormat` - Unsupported MIME type or file format
  # - `Other` - Catch-all for uncommon errors
  class XbergError < Exception
  end

  # Errors that can occur during heuristics analysis.
  class HeuristicsError < Exception
  end

  # Errors produced while loading or validating a preset file.
  class LoadError < Exception
  end

  # Errors produced while resolving a preset against caller overrides.
  class ResolveError < Exception
  end

  # Extract content from a single bytes or URI input.
  def self.extract(input : ExtractInput, config : ExtractionConfig) : ExtractionResult
    __handle_input = LibXberg.extract_input_from_json(input.to_json)
    __handle_config = LibXberg.extraction_config_from_json(config.to_json)
    __ptr = LibXberg.extract(__handle_input, __handle_config)
    if __ptr.null?
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "LibXberg.extract returned a null pointer"
    end
    __json_ptr = LibXberg.extraction_result_to_json(__ptr)
    LibXberg.extraction_result_free(__ptr)
    __json = String.new(__json_ptr)
    LibXberg.free_string(__json_ptr)
    LibXberg.extract_input_free(__handle_input)
    LibXberg.extraction_config_free(__handle_config)
    ExtractionResult.from_json(__json)
  end

  # Extract content from multiple bytes or URI inputs.
  def self.extract_batch(inputs : Array(ExtractInput), config : ExtractionConfig) : ExtractionResult
    __handle_config = LibXberg.extraction_config_from_json(config.to_json)
    __ptr = LibXberg.extract_batch(inputs.to_json, __handle_config)
    if __ptr.null?
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "LibXberg.extract_batch returned a null pointer"
    end
    __json_ptr = LibXberg.extraction_result_to_json(__ptr)
    LibXberg.extraction_result_free(__ptr)
    __json = String.new(__json_ptr)
    LibXberg.free_string(__json_ptr)
    LibXberg.extraction_config_free(__handle_config)
    ExtractionResult.from_json(__json)
  end

  # Discover all pages and sitemaps reachable from `uri` without extracting document content.
  def self.map_url(uri : String, config : UrlExtractionConfig) : MapResult
    __handle_config = LibXberg.url_extraction_config_from_json(config.to_json)
    __ptr = LibXberg.map_url(uri, __handle_config)
    if __ptr.null?
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "LibXberg.map_url returned a null pointer"
    end
    __json_ptr = LibXberg.map_result_to_json(__ptr)
    LibXberg.map_result_free(__ptr)
    __json = String.new(__json_ptr)
    LibXberg.free_string(__json_ptr)
    LibXberg.url_extraction_config_free(__handle_config)
    MapResult.from_json(__json)
  end

  # List all supported document formats.
  def self.list_supported_formats() : Array(SupportedFormat)
    __ptr = LibXberg.list_supported_formats()
    raise "LibXberg.list_supported_formats returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    Array(SupportedFormat).from_json(__json)
  end

  # Ensure built-in extractors are registered.
  def self.ensure_initialized() : Nil
    LibXberg.ensure_initialized()
    __code = LibXberg.last_error_code
    if __code != 0
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    nil
  end

  # Clear all embedding backends from the global registry.
  def self.clear_embedding_backends() : Nil
    LibXberg.clear_embedding_backends()
    __code = LibXberg.last_error_code
    if __code != 0
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    nil
  end

  # List the names of all registered embedding backends.
  def self.list_embedding_backends() : Array(String)
    __ptr = LibXberg.list_embedding_backends()
    raise "LibXberg.list_embedding_backends returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    Array(String).from_json(__json)
  end

  # List names of all registered document extractors.
  def self.list_document_extractors() : Array(String)
    __ptr = LibXberg.list_document_extractors()
    raise "LibXberg.list_document_extractors returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    Array(String).from_json(__json)
  end

  # Clear all document extractors from the global registry.
  def self.clear_document_extractors() : Nil
    LibXberg.clear_document_extractors()
    __code = LibXberg.last_error_code
    if __code != 0
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    nil
  end

  # List all registered OCR backends.
  def self.list_ocr_backends() : Array(String)
    __ptr = LibXberg.list_ocr_backends()
    raise "LibXberg.list_ocr_backends returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    Array(String).from_json(__json)
  end

  # Clear all OCR backends from the global registry.
  def self.clear_ocr_backends() : Nil
    LibXberg.clear_ocr_backends()
    __code = LibXberg.last_error_code
    if __code != 0
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    nil
  end

  # List all registered post-processor names.
  def self.list_post_processors() : Array(String)
    __ptr = LibXberg.list_post_processors()
    raise "LibXberg.list_post_processors returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    Array(String).from_json(__json)
  end

  # Remove all registered post-processors.
  def self.clear_post_processors() : Nil
    LibXberg.clear_post_processors()
    __code = LibXberg.last_error_code
    if __code != 0
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    nil
  end

  # List names of all registered renderers.
  def self.list_renderers() : Array(String)
    __ptr = LibXberg.list_renderers()
    raise "LibXberg.list_renderers returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    Array(String).from_json(__json)
  end

  # Clear all renderers from the global registry.
  def self.clear_renderers() : Nil
    LibXberg.clear_renderers()
    __code = LibXberg.last_error_code
    if __code != 0
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    nil
  end

  # Clear all reranker backends from the global registry.
  def self.clear_reranker_backends() : Nil
    LibXberg.clear_reranker_backends()
    __code = LibXberg.last_error_code
    if __code != 0
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    nil
  end

  # List the names of all registered reranker backends.
  def self.list_reranker_backends() : Array(String)
    __ptr = LibXberg.list_reranker_backends()
    raise "LibXberg.list_reranker_backends returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    Array(String).from_json(__json)
  end

  # Clear all tokenizer backends from the global registry.
  def self.clear_tokenizer_backends() : Nil
    LibXberg.clear_tokenizer_backends()
    __code = LibXberg.last_error_code
    if __code != 0
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    nil
  end

  # List the names of all registered tokenizer backends.
  def self.list_tokenizer_backends() : Array(String)
    __ptr = LibXberg.list_tokenizer_backends()
    raise "LibXberg.list_tokenizer_backends returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    Array(String).from_json(__json)
  end

  # List names of all registered validators.
  def self.list_validators() : Array(String)
    __ptr = LibXberg.list_validators()
    raise "LibXberg.list_validators returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    Array(String).from_json(__json)
  end

  # Remove all registered validators.
  def self.clear_validators() : Nil
    LibXberg.clear_validators()
    __code = LibXberg.last_error_code
    if __code != 0
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    nil
  end

  # Run chunk classification against an extraction result.
  def self.classify_chunks(result : ExtractedDocument, config : ChunkClassificationConfig) : Nil
    __handle_result = LibXberg.extracted_document_from_json(result.to_json)
    __handle_config = LibXberg.chunk_classification_config_from_json(config.to_json)
    LibXberg.classify_chunks(__handle_result, __handle_config)
    __code = LibXberg.last_error_code
    if __code != 0
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "unknown error"
    end
    nil
    LibXberg.extracted_document_free(__handle_result)
    LibXberg.chunk_classification_config_free(__handle_config)
  end

  # Find unmarked claims in markdown text.
  def self.find_unmarked_claims(markdown : String) : Array(String)
    __ptr = LibXberg.find_unmarked_claims(markdown)
    raise "LibXberg.find_unmarked_claims returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    Array(String).from_json(__json)
  end

  # Verify that an excerpt appears verbatim in source text.
  def self.verify_excerpt(excerpt : String, source_text : String) : Bool
    LibXberg.verify_excerpt(excerpt, source_text)
  end

  # Async wrapper over [`embed_sparse`]: runs the blocking ONNX inference on a
  def self.embed_sparse_async(texts : Array(String), config : SparseEmbeddingConfig) : Array(SparseEmbedding)
    __handle_config = LibXberg.sparse_embedding_config_from_json(config.to_json)
    __ptr = LibXberg.embed_sparse_async(texts.to_json, __handle_config)
    raise "LibXberg.embed_sparse_async returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    LibXberg.sparse_embedding_config_free(__handle_config)
    Array(SparseEmbedding).from_json(__json)
  end

  # Score a query against a document using ColBERT's MaxSim operator: for each
  def self.max_sim_score(query : MultiVectorEmbedding, doc : MultiVectorEmbedding) : Float64
    __handle_query = LibXberg.multi_vector_embedding_from_json(query.to_json)
    __handle_doc = LibXberg.multi_vector_embedding_from_json(doc.to_json)
    LibXberg.max_sim_score(__handle_query, __handle_doc)
    LibXberg.multi_vector_embedding_free(__handle_query)
    LibXberg.multi_vector_embedding_free(__handle_doc)
  end

  # Rank a set of documents against a query by MaxSim score, descending.
  def self.max_sim_rank(query : MultiVectorEmbedding, docs : Array(MultiVectorEmbedding)) : Array(LateInteractionMatch)
    __handle_query = LibXberg.multi_vector_embedding_from_json(query.to_json)
    __ptr = LibXberg.max_sim_rank(__handle_query, docs.to_json)
    raise "LibXberg.max_sim_rank returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    LibXberg.multi_vector_embedding_free(__handle_query)
    Array(LateInteractionMatch).from_json(__json)
  end

  # Async wrapper over [`embed_multi_vector`]: runs the blocking ONNX inference
  def self.embed_multi_vector_async(texts : Array(String), config : LateInteractionConfig, is_query : Bool) : Array(MultiVectorEmbedding)
    __handle_config = LibXberg.late_interaction_config_from_json(config.to_json)
    __ptr = LibXberg.embed_multi_vector_async(texts.to_json, __handle_config, is_query)
    raise "LibXberg.embed_multi_vector_async returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    LibXberg.late_interaction_config_free(__handle_config)
    Array(MultiVectorEmbedding).from_json(__json)
  end

  # Probe the backends and settings in `config` and report what will actually
  def self.doctor(config : ExtractionConfig) : DoctorReport
    __handle_config = LibXberg.extraction_config_from_json(config.to_json)
    __ptr = LibXberg.doctor(__handle_config)
    if __ptr.null?
      __ctx_ptr = LibXberg.last_error_context
      raise String.new(__ctx_ptr) unless __ctx_ptr.null?
      raise "LibXberg.doctor returned a null pointer"
    end
    __json_ptr = LibXberg.doctor_report_to_json(__ptr)
    LibXberg.doctor_report_free(__ptr)
    __json = String.new(__json_ptr)
    LibXberg.free_string(__json_ptr)
    LibXberg.extraction_config_free(__handle_config)
    DoctorReport.from_json(__json)
  end

  # Install [`PdfOxideWarningCapture`] as the process-wide `log` backend,
  def self.install_pdf_render_diagnostics() : Bool
    LibXberg.install_pdf_render_diagnostics()
  end

  # Drain the glyph-drop [`ProcessingWarning`]s accumulated on this thread by
  def self.take_pdf_oxide_render_warnings() : Array(ProcessingWarning)
    __ptr = LibXberg.take_pdf_oxide_render_warnings()
    raise "LibXberg.take_pdf_oxide_render_warnings returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    Array(ProcessingWarning).from_json(__json)
  end

  # Build the four (or three) token Whisper decoder prompt.
  def self.build_decoder_prompt_tokens(start_of_transcript : UInt32, lang_id : UInt32, transcribe : UInt32, no_timestamps : UInt32, timestamps : Bool) : Array(Int64)
    __ptr = LibXberg.build_decoder_prompt_tokens(start_of_transcript, lang_id, transcribe, no_timestamps, timestamps)
    raise "LibXberg.build_decoder_prompt_tokens returned a null pointer" if __ptr.null?
    __json = String.new(__ptr)
    LibXberg.free_string(__ptr)
    Array(Int64).from_json(__json)
  end

  # Convert a raw Whisper timestamp token ID to a millisecond offset from the
  def self.timestamp_token_to_ms(token_id : UInt32, timestamp_begin_id : UInt32) : UInt32
    LibXberg.timestamp_token_to_ms(token_id, timestamp_begin_id)
  end
end
require "./xberg_ocr_backend_plugin"
require "./xberg_post_processor_plugin"
require "./xberg_validator_plugin"
require "./xberg_document_extractor_plugin"
require "./xberg_embedding_backend_plugin"
require "./xberg_renderer_plugin"
require "./xberg_reranker_backend_plugin"
require "./xberg_tokenizer_backend_plugin"
