$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kms/seo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kms_seo"
  s.version     = Kms::Seo::VERSION
  s.authors     = ["Igor Petrov"]
  s.email       = ["garik.piton@gmail.com"]
  s.homepage    = "http://webgradus.ru"
  s.summary     = "Adds SEO support to KMS"
  s.description = "Adds SEO support to KMS"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.0.0"
  s.add_dependency "kms", "~> 0.6"

  s.add_development_dependency 'combustion', '~> 0.5.4'
  s.add_development_dependency 'rspec-rails', '~> 3.5', '>= 3.5.0'
  s.add_development_dependency 'shoulda-matchers', '~> 3.1'
end
