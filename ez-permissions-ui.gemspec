# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'ez/permissions/ui/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'ez-permissions-ui'
  s.version     = Ez::Permissions::UI::VERSION
  s.authors     = ['Volodya Sveredyuk']
  s.email       = ['sveredyuk@gmail.com']
  s.homepage    = 'https://github.com/ez-engines/ez-permissions-ui'
  s.summary     = 'UI extension for ez-permissions.'
  s.description = 'UI extension for ez-permissions.'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.5.0'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if s.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
          'public gem pushes.'
  end

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'ez-permissions', '~> 0.5.0'

  s.add_dependency 'cells-rails',    '~> 0.1.0'
  s.add_dependency 'cells-slim',     '~> 0.0.6'
  s.add_dependency 'rails',          '>= 5.2', '<= 7.0'
  s.add_dependency 'simple_form',    '>= 5.0.1'

  s.add_development_dependency 'bundler', '~> 2.0'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'faker'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3', '~> 1.4'
end
