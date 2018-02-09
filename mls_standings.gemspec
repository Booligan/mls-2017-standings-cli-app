# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mls_standings/version'


Gem::Specification.new do |gem|
  gem.name          = "mls_standings"
  gem.version       = MlsStandings::VERSION
  gem.authors       = ["Alberto Mayanga"]
  gem.email         = ["aamayanga@gmail.com"]

  gem.summary       = %q{Command line app to view the table standings of Major League Soccer’s current season}
  gem.description   = %q{Live table standings coming stright from MLSsoccer.com}
  gem.homepage      = "https://github.com/Booligan/mls-standings-cli-app"
  gem.license       = "MIT"

  gem.files         = "git ls-files".split($\)
  spec.bindir        = "bin"
  gem.executables   = ["mls_standings"]
  gem.name          = "mls_standings"
  gem.require_paths = ["lib", "lib/mls_standings"]
  

  gem.add_development_dependency "bundler", "~> 1.14"
  gem.add_development_dependency "nokogiri", '~> 1.8', '>= 1.8.2'
  gem.add_development_dependency "pry", '~> 0.11.3'
  gem.add_dependency "colorize", '~> 0.8.1'

end
