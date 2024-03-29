# frozen_string_literal: true

require_relative 'lib/fudo3/version'

Gem::Specification.new do |spec|
  spec.name          = 'fudo3'
  spec.version       = Fudo3::VERSION
  spec.authors       = ['Shuhei Yamashita']
  spec.email         = ['y.shuhei0501@gmail.com']

  spec.summary       = '不動産で使用する関数'
  spec.description   = '不動産で使用する関数をまとめたgemです。'
  spec.homepage      = 'https://github.com/yposi/fudo3'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7')

  if spec.respond_to?(:metadata)
    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/yposi/fudo3'
    spec.metadata['changelog_uri'] = 'https://github.com/yposi/fudo3'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
          'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '>= 13.0.3'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec_junit_formatter'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rake'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'simplecov'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
