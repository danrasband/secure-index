# -*- encoding: utf-8 -*-

require 'openssl'
require 'redis'
require 'secure-index/configuration'

module SecureIndex
  class << self
    def configure(&block)
      SecureIndex::Configuration.configure(&block)
    end
  end
end

require 'secure-index/client'
require 'secure-index/index'
require 'secure-index/search'
require 'secure-index/utils'
require 'secure-index/version'
