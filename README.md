[![Dart CI](https://github.com/devoncarew/wasmd/actions/workflows/build.yaml/badge.svg)](https://github.com/devoncarew/wasmd/actions/workflows/build.yaml)

An exploration of compiling Wasm to Dart.

## TODO items

### read wasm format

https://webassembly.github.io/spec/core/_download/WebAssembly.pdf

https://webassembly.github.io/spec/core/exec/runtime.html

https://webassembly.github.io/spec/core/intro/introduction.html

https://developer.mozilla.org/en-US/docs/WebAssembly/Understanding_the_text_format

https://webassembly.github.io/spec/core/appendix/index-instructions.html

### have several hello-world apps

### Set up benchmarking

### write tests using a conformance test

https://github.com/WebAssembly/spec/tree/main/test/core

https://github.com/WebAssembly/wabt/tree/main/test/spec

### Re-building

- `dart tool/regen.dart <wat file>`

### Updating the spec files

- `git submodule update`

or:

- `git submodule update --remote`

### Re-generating test files

- `dart tool/spec.dart spec/test/core/i32.wast`
