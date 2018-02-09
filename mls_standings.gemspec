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

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.post_install_message = "What is your favorite team's record? Find out now!"
  

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", '~> 0.11.3'

  spec.add_dependency "nokogiri", '~> 1.8', '>= 1.8.2'  
  spec.add_dependency "colorize", '~> 0.8.1'
end
