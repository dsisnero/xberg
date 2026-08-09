```crystal title="Crystal"
require "xberg"

inputs = Xberg::ExtractInput.from_json(%([{"kind":"uri","uri":"a.pdf"},{"kind":"uri","uri":"b.pdf"}]))
config = Xberg::ExtractionConfig.from_json("{}")
output = Xberg.extract_batch(inputs, config)
```
