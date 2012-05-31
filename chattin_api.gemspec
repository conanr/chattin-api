require File.expand_path('../lib/chattin_api/version', __FILE__)

Gem::Specification.new do |s|
  s.add_dependency 'faraday'
  s.add_dependency 'hashie'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'

  s.authors = ['Charles Strahan']
  s.description = %q{An API for the Chattin app.}
  s.email = 'charles.c.strahan@gmail.com'
  s.files = `git ls-files`.split("\n")
  s.homepage = 'https://github.com/cstrahan/chattin_api'
  s.name = 'chattin_api'
  s.rdoc_options = ['--charset=UTF-8']
  s.require_paths = ['lib']
  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.6')
  s.summary = s.description
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = ChattinApi::VERSION
end
