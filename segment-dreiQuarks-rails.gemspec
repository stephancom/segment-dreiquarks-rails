# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'segment-dreiquarks-rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'segment-dreiquarks-rails'
  spec.version       = Segment::DreiQuarks::Rails::VERSION
  spec.authors       = ['stephan.com', 'Rüdiger Appel']
  spec.email         = ['stephan@stephan.com', 'ruediger.appel@me.com']

  spec.summary       = '3Quarks Segment Display wrapped for rails.'
  spec.homepage      = 'http://www.3quarks.com/en/SegmentDisplay/index.html'
  spec.license       = 'CC BY 3.0'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
