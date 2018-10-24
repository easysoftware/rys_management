# encoding: utf-8

$:.push File.expand_path('lib', __dir__)

require 'rys_management/version'

Gem::Specification.new do |s|
  s.name        = 'rys_management'
  s.version     = RysManagement::VERSION
  s.authors     = ['Ondřej Moravčík']
  s.email       = ['ondrej.moravcik@easy.cz']
  s.homepage    = 'https://easysoftware.com'
  s.summary     = 'Summary of RysManagement.'
  s.description = 'Description of RysManagement.'
  s.license     = 'GNU/GPL 2'

  s.files = Dir['{app,config,db,lib}/**/*', 'Rakefile', 'README.md', 'gems.rb', 'dependencies.rb']
  s.test_files = Dir['test/**/*', 'spec/**/*']

  s.add_dependency 'rys'
  s.add_development_dependency 'pry-rails'
end
