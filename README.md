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

## Contributions, PRs, and publishing

When contributing to this repo:

- if the package version is a stable semver version (`x.y.z`), the latest
  changes have been published to pub. Please add a new changelog section for
  your change, rev the service portion of the version, append `-dev`, and update
  the pubspec version to agree with the new version
- if the package version ends in `-dev`, the latest changes are unpublished;
  please add a new changelog entry for your change in the most recent section.
  When we decide to publish the latest changes we'll drop the `-dev` suffix
  from the package version
- for PRs, the `Publish` bot will perform basic validation of the info in the
  pubspec.yaml and CHANGELOG.md files
- when the PR is merged into the main branch, if the change includes reving to
  a new stable version, a repo maintainer will tag that commit with the pubspec
  version (e.g., `v1.2.3`); that tag event will trigger the `Publish` bot to
  publish a new version of the package to pub.dev
