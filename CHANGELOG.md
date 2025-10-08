# Changelog

## 0.2.0 (2025-10-08)

Full Changelog: [v0.1.1...v0.2.0](https://github.com/straddleio/straddle-ruby/compare/v0.1.1...v0.2.0)

### Features

* **api:** manual updates ([057927a](https://github.com/straddleio/straddle-ruby/commit/057927a455631a850c4284ebcfbc4f1bfa7dc5eb))
* **api:** manual updates ([98aa85e](https://github.com/straddleio/straddle-ruby/commit/98aa85e3b01e330403942184fd986af93253640a))
* **docs:** Preliminary update to SDK Spec ([dc61e54](https://github.com/straddleio/straddle-ruby/commit/dc61e54a7964ace2e73c99c1844e1c8afd3b6d24))
* **docs:** Preliminary update to SDK Spec ([a2fbd33](https://github.com/straddleio/straddle-ruby/commit/a2fbd33c6636f827e0edd35f26815b32a24296e6))
* **docs:** Preliminary update to SDK Spec ([0cde0b4](https://github.com/straddleio/straddle-ruby/commit/0cde0b45a6ac30cd2086eb804f43849bffc734dd))
* **docs:** Preliminary update to SDK Spec ([20b1183](https://github.com/straddleio/straddle-ruby/commit/20b11834366af2928a97030f939a70c706d50469))
* **docs:** Release Updates to SDK based on Open API Spec (Final) ([9442214](https://github.com/straddleio/straddle-ruby/commit/94422145d27bf6974a7955eb678ec2bc9c0bb4ef))
* expose response headers for both streams and errors ([a06e5bb](https://github.com/straddleio/straddle-ruby/commit/a06e5bb80cf4d4a49f515d4bff66d6fa11adeae1))


### Bug Fixes

* always send `filename=...` for multipart requests where a file is expected ([d8dcb1b](https://github.com/straddleio/straddle-ruby/commit/d8dcb1b00300a03983cbd67a72af18020822c5c3))
* **api:** update default API URLs and metadata ([b23e97e](https://github.com/straddleio/straddle-ruby/commit/b23e97ea5c1b0698df3f7f21735a7e0fcf8b6e5a))
* bump sorbet version and fix new type errors from the breaking change ([c57c7c9](https://github.com/straddleio/straddle-ruby/commit/c57c7c920a948012f18f8e047eb11f9832ce1cb6))
* coroutine leaks from connection pool ([f2e61b1](https://github.com/straddleio/straddle-ruby/commit/f2e61b1a8cfc85996d03712b753e306368196203))
* **internal:** ensure sorbet test always runs serially ([9f7f88a](https://github.com/straddleio/straddle-ruby/commit/9f7f88a59fdc8b2723aec681757d170505561202))
* shorten multipart boundary sep to less than RFC specificed max length ([ffd8ef5](https://github.com/straddleio/straddle-ruby/commit/ffd8ef5e84376bd3bdbdff9d1b6e2c27083cb2aa))


### Performance Improvements

* faster code formatting ([8e88904](https://github.com/straddleio/straddle-ruby/commit/8e88904d37df47c41da9b68cc8d9933137f648a0))


### Chores

* add json schema comment for rubocop.yml ([0bde048](https://github.com/straddleio/straddle-ruby/commit/0bde0487e0cea64712cf1cac96aba024a16ad5f7))
* allow fast-format to use bsd sed as well ([95b82e0](https://github.com/straddleio/straddle-ruby/commit/95b82e01dcbfa391aa8d4879f448c574efd39ed2))
* collect metadata from type DSL ([715a864](https://github.com/straddleio/straddle-ruby/commit/715a864f14ceda15395fb9b9d49f1acc2f338d51))
* do not install brew dependencies in ./scripts/bootstrap by default ([546b45e](https://github.com/straddleio/straddle-ruby/commit/546b45e0c2a548264407a012fbce0f0197954784))
* **internal:** codegen related update ([645f5e3](https://github.com/straddleio/straddle-ruby/commit/645f5e3f2d3061c2259c98666745224f04652391))
* **internal:** increase visibility of internal helper method ([ef8bbee](https://github.com/straddleio/straddle-ruby/commit/ef8bbee699b474dcdb6ea184f35af6c07d4bc0b4))
* **internal:** update comment in script ([caa575f](https://github.com/straddleio/straddle-ruby/commit/caa575ff8c113eb04eb86d35cdbb559c994cb5f8))
* update @stainless-api/prism-cli to v5.15.0 ([c881442](https://github.com/straddleio/straddle-ruby/commit/c8814421f86dd430870abc78b29685cca4a7535d))
* update contribute.md ([1da1122](https://github.com/straddleio/straddle-ruby/commit/1da11228a4e40ad0e4b2a5a750a343f312d5fe16))

## 0.1.1 (2025-07-08)

Full Changelog: [v0.1.0-alpha.1...v0.1.1](https://github.com/straddleio/straddle-ruby/compare/v0.1.0-alpha.1...v0.1.1)

### Features

* **api:** manual updates ([0dfb357](https://github.com/straddleio/straddle-ruby/commit/0dfb357494820254a15205c4247df297af54b988))
* **api:** manual updates ([36749bb](https://github.com/straddleio/straddle-ruby/commit/36749bb564c20ede2710ecb69f7811f1b841d3ff))

## 0.1.0-alpha.1 (2025-07-08)

Full Changelog: [v0.0.1-alpha.0...v0.1.0-alpha.1](https://github.com/straddleio/straddle-ruby/compare/v0.0.1-alpha.0...v0.1.0-alpha.1)

### Features

* **api:** Remove explicit environment setting ([74cb379](https://github.com/straddleio/straddle-ruby/commit/74cb379d62b447dbdde9697c938e9065eee6e113))
