$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "check_in_objects/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "check_in_objects"
  spec.version     = CheckInObjects::VERSION
  spec.authors     = ["Armando Alejandre"]
  spec.email       = ["armando1339@gmail.com"]
  spec.homepage    = "https://github.com/armando1339"
  spec.summary     = "Rails plugin that do check-in/check-out of models of ActiveRecord."
  spec.description = "Rails plugin that do check-in/check-out of models of ActiveRecord."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.3"

  spec.add_development_dependency "pg"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "shoulda-matchers"
  spec.add_development_dependency "shoulda-callback-matchers"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "coveralls"
end
