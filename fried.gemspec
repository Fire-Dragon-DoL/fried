
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fried/version"

Gem::Specification.new do |spec|
  spec.name          = "fried"
  spec.version       = Fried::VERSION
  spec.authors       = ["Fire-Dragon-DoL"]
  spec.email         = ["francesco.belladonna@gmail.com"]
  spec.licenses      = ["MIT"]

  spec.summary       = %q{Metapackage for ruby utilities library prefixed with fried-}
  spec.description   = %q{Metapackage for ruby utilities library prefixed with fried-}
  spec.homepage      = "https://github.com/Fire-Dragon-DoL/fried"
  spec.metadata      = {
    "source_code_uri" => "https://github.com/Fire-Dragon-DoL/fried"
  }

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "fried-core"
  spec.add_runtime_dependency "fried-typings"
end
