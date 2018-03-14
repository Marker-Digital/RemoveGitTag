# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/remove_git_tag/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-remove_git_tag'
  spec.version       = Fastlane::RemoveGitTag::VERSION
  spec.author        = 'Shane Henderson'
  spec.email         = 'shane.h@marker.co.nz'

  spec.summary       = 'This will remove a specific tag from your remote branch'
  # spec.homepage      = "https://github.com/<GITHUB_USERNAME>/fastlane-plugin-remove_git_tag"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency('pry')
  spec.add_development_dependency('bundler')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('rspec_junit_formatter')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('rubocop', '0.49.1')
  spec.add_development_dependency('rubocop-require_tools')
  spec.add_development_dependency('simplecov')
  spec.add_development_dependency('fastlane', '>= 2.85.0')
end
