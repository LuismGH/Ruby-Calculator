require_relative 'lib/iluzio_calculator/version'

Gem::Specification.new do |spec|
  spec.name          = "iluzio_calculator"
  spec.version       = IluzioCalculator::VERSION
  spec.authors       = ["Luis Marcelo Chinea Rangel"]
  spec.email         = ["alu0101118116@ull.edu.es"]
  
  spec.summary       = "Ruby Interactive Calculator"
  spec.description   = "Implementation of an interactive calculator in the Ruby programming language. Allows basics and complex number operations between, such as powers, square roots etc."
  spec.homepage      = "https://github.com/LuismGH/Ruby-Calculator"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/LuismGH/Ruby-Calculator"
  spec.metadata["changelog_uri"] = "https://github.com/LuismGH/Ruby-Calculator/blob/Dev/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
