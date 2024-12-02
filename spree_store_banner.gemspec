# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_store_banner/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_store_banner'
  s.version     = SpreeStoreBanner.version
  s.summary     = 'Extension to add banners in spree'
  s.description = 'Store specific banners'
  s.required_ruby_version = '>= 3.3.4'

  s.author    = 'Vishal Garg'
  s.email     = 'vishal@bluebash.co'
  s.homepage  = 'https://github.com/spree-edge/spree_store_banner'
  s.license = 'BSD-3-Clause'

  s.files       = `git ls-files`.split("\n").reject { |f| f.match(/^spec/) && !f.match(/^spec\/fixtures/) }
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree', '>= 4.8.0'
  s.add_dependency 'spree_extension'

  s.add_development_dependency 'spree_dev_tools'
  s.add_development_dependency 'deface'
end
