# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'secure-index/version'
require 'date'

Gem::Specification.new do |s|
  s.name = 'secure-index'
  s.version = SecureIndex::VERSION
  s.date = Date.today
  s.summary = 'A secure index manager.'
  s.description = 'A gem that can create a secure index that can later be searched.'
  s.authors = ['Dan Rasband']
  s.email = 'danrasband@gmail.com'
  s.files = Dir['lib/**/*', 'README.md']
  s.require_paths = ['lib']
  s.homepage = 'https://github.com/danrasband/secure-index'
  s.licenses = ['MIT']
  s.extra_rdoc_files = ['README.md']

  s.add_runtime_dependency 'redis', '~> 3.2.0', '>= 3.2.0'
  s.add_runtime_dependency 'encryptor', '~> 1.3.0', '>= 1.3.0'
end
