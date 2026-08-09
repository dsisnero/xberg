```crystal title="Crystal"
require "xberg"

input = Xberg::ExtractInput.from_json(%({"kind":"uri","uri":"scan.pdf"}))
config = Xberg::ExtractionConfig.from_json(%({"ocr":{"mode":"force"}}))
output = Xberg.extract(input, config)
```
