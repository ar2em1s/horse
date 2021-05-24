# frozen_string_literal: true

require_relative 'lib/horse'

Gem::Specification.new do |spec|
  spec.name          = 'horse'
  spec.version       = Horse::VERSION
  spec.authors       = ['Artem Shevchenko']
  spec.email         = ['artemsheva0510@gmail.com']

  spec.summary       = 'What does horse say?'
  spec.description   = 'Library that print your text as horse talk'
  spec.homepage      = 'https://github.com/Ar2emis/horse'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.2')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Ar2emis/horse'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'lefthook', '~> 0.7.2'
  spec.add_development_dependency 'pry', '~> 0.14.0'
  spec.add_development_dependency 'rubocop', '~> 1.14.0'
  spec.add_development_dependency 'rubocop-performance', '~> 1.10.2'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.2.0'
end
