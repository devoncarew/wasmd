[![Dart CI](https://github.com/devoncarew/wasmd/actions/workflows/build.yaml/badge.svg)](https://github.com/devoncarew/wasmd/actions/workflows/build.yaml)

An exploration of compiling Wasm to Dart.

## Useful docs

- https://webassembly.github.io/spec/core/_download/WebAssembly.pdf
- https://webassembly.github.io/spec/core/exec/runtime.html
- https://webassembly.github.io/spec/core/intro/introduction.html
- https://developer.mozilla.org/en-US/docs/WebAssembly/Understanding_the_text_format
- https://webassembly.github.io/spec/core/appendix/index-instructions.html

## Conformance tests

We generate our spec tests from the conformance suite at
https://github.com/WebAssembly/spec/tree/main/test/core.

You need to have the wabt tools (wat2wasm, wasm2wat, ...) installed locally.

## Benchmarking

We have some initial benchmarks in the benchmark/ directory. Run either:

- `dart benchmark/gcd_bench.dart`, or
- `dart benchmark/mandelbrot_bench.dart`

## Re-building

### Updating all the spec tests (test/spec/)

- `dart tool/spec.dart --all`

### Re-generating a single spec test

- `dart tool/spec.dart spec/test/core/i32.wast`

### Rebuilding all the samples (samples/)

- `dart tool/regen.dart samples/*.wat`

### Rebuilding a single sample

- `dart tool/regen.dart samples/bcd.wat`

### Updating the spec files

- `git submodule update`

or:

- `git submodule update --remote`
