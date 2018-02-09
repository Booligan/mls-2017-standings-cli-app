# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mls_standings/version'


Gem::Specification.new do |spec|
  spec.name          = "mls_standings"
  spec.version       = MlsStandings::VERSION
  spec.authors       = ["Alberto Mayanga"]
  spec.email         = ["aamayanga@gmail.com"]

  spec.summary       = %q{Command line app to view the table standings of Major League Soccer’s current season}
  spec.description   = %q{Live table standings coming stright from MLSsoccer.com}
  spec.homepage      = "https://github.com/Booligan/mls-standings-cli-app"
  spec.license       = "MIT"

  spec.bindir        = "exe"
  spec.executables   = ["mls_standings"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "nokogiri", '~> 1.8', '>= 1.8.2'
  spec.add_development_dependency "pry", '~> 0.11.3'
  spec.add_dependency "colorize", '~> 0.8.1'

end
