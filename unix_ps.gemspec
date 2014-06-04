# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "unix_ps/version"

Gem::Specification.new do |s|
  s.name        = "unix-ps"
  s.version     = UnixPs::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jason Parraga"]
  s.email       = ["Sovietaced@gmail.com"]
  s.homepage    = "https://github.com/Sovietaced/unix-ps"
  s.summary     = %q{A Ruby wrapper around the unix tool ps.}
  s.description = %q{A Ruby wrapper around the unix tool ps.}

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
