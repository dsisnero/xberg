```crystal title="Crystal"
require "xberg"

# Download the native FFI library first (see README):
#   ./scripts/download_ffi.sh
# Build with:
#   crystal build --link-flags="-L.lib -Wl,-rpath,$(pwd)/.lib" src/app.cr

input = Xberg::ExtractInput.from_json(%({"kind":"uri","uri":"document.pdf"}))
config = Xberg::ExtractionConfig.from_json("{}")
output = Xberg.extract(input, config)

puts output.results[0].try(&.content)
```
