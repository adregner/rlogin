$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'rlogin/version'

Gem::Specification.new do |s|
  s.name = "rlogin"
  s.version = Rlogin::VERSION

  s.summary = "Logs you into servers in many different ways."
  s.description = "rlogin is capable of logging into UNIX servers via SSH and gaining root access in many configurable ways.  It includes support for known (named) SSH bastion servers along with arbitrary proxy configurations."

  s.authors = ["Andrew Regner"]
  s.email = "andrew@aregner.com"
  s.homepage = "https://github.com/adregner/rlogin"

  s.files = `git ls-files lib`.split("\n")
  s.files += `git ls-files bin`.split("\n")
  s.files += `git ls-files config`.split("\n")
  s.files.reject! { |fn| fn.include?(".dev") }

  s.add_dependency("event-expectr", ">=0.1.1")

  s.executables = ["rlogin"]
end
