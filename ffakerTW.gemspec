# frozen_string_literal: true

require_relative "lib/ffakerTW/version"

Gem::Specification.new do |spec|
  spec.name = "ffakerTW"
  spec.version = FfakerTW::VERSION
  spec.authors = ["https://github.com/afgnsu/ffakerTW","Patrick Su"]
  spec.email = ["afgnsu@gmail.com"]

  spec.summary = "FfakerTW generates Traditional-Chinese dummy data."
  spec.description = "FfakerTW 建立繁體中文假資料"
  spec.homepage = "https://github.com/afgnsu/ffakerTW"
  spec.required_ruby_version = ">= 2.0.0"
  spec.license = 'MIT'

  #spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"
  #spec.metadata["homepage_uri"] = spec.homepage
  #spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.rdoc_options = ['--charset=UTF-8']
  spec.extra_rdoc_files = %w[README.md LICENSE Changelog.md]

  # = MANIFEST =
  spec.files = %w[
    Changelog.md
    Gemfile
    LICENSE
    RANDOM.md
    README.md
    REFERENCE.md
    Rakefile
    ffakerTW.gemspec
  ] + Dir['lib/**/*', 'scripts/*']
  # = MANIFEST =

  spec.test_files = Dir['test/**/*']

  spec.metadata = {
    'changelog_uri' => 'https://github.com/afgnsu/ffakerTW/blob/main/Changelog.md',
    'documentation_uri' => 'https://github.com/afgnsu/ffakerTW/blob/main/REFERENCE.md'
  }

  spec.add_development_dependency 'rake', '>= 0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'test-unit'

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
