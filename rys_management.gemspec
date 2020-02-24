# encoding: utf-8

$:.push File.expand_path('lib', __dir__)
require 'rys_management/version'

Gem::Specification.new do |s|
  s.name        = 'rys_management'
  s.version     = RysManagement::VERSION
  s.authors     = ['Ondřej Moravčík']
  s.email       = ['info@easysoftware.com']
  s.homepage    = 'https://easysoftware.com'
  s.summary     = 'Summary of RysManagement.'
  s.description = 'Description of RysManagement.'
  s.license     = 'GPL-2.0-or-later'

  s.metadata['allowed_push_host'] = 'https://gems.easysoftware.com'

  s.files = Dir['{app,config,db,lib,patches}/**/{*,.*}', 'Rakefile', 'README.md', 'gems.rb']
  s.test_files = Dir['test/**/*', 'spec/**/*']

  s.add_dependency 'rys', '~> 1.4.12'
end
