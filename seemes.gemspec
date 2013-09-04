$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "seemes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "seemes"
  s.version     = Seemes::VERSION
  s.authors     = ["Daniel Boekhoff"]
  s.email       = ["daniel@datawerft.com"]
  s.homepage    = "http://datawerft.com"
  s.summary     = "Simple CMS Engine"
  s.description = "Simple CMS Engine"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails" #, "~> 3.2.13"
  s.add_dependency "mongoid"

  s.add_development_dependency "rspec"
end
