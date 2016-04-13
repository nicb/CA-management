# coding: utf-8
lib = File.expand_path(File.join('..', 'lib', 'CA'), __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'management'

Gem::Specification.new do |spec|
  spec.name          = 'CA-management'
  spec.version       = CA::Management::VERSION
  spec.authors       = ['Nicola Bernardini']
  spec.email         = ['n.bernardini@conservatoriosantacecilia.it']

  spec.summary       = %q{CollectiveAccess management tasks}
  spec.description   = %q{CollectiveAccess management tasks}
  spec.homepage      = 'https://github.com/nicb/CA-management'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'activerecord'
  spec.add_development_dependency 'mysql'
end
