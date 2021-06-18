require_relative 'lib/sensor/version'

Gem::Specification.new do |spec|
  spec.name          = "sensor"
  spec.version       = Sensor::VERSION
  spec.authors       = ["Mike West"]
  spec.email         = ["westmd23@gmail.com"]

  spec.summary       = %q{Homework Assignment for RC}
  spec.homepage      = "https://github.com/westmd23/sensor"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/westmd23/sensor"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
