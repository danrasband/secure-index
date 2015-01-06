# -*- encoding: utf-8 -*-

module SecureIndex
  class Configuration
    class << self
      attr_accessor :redis_host
      attr_accessor :redis_port
      attr_accessor :redis_path
      attr_accessor :redis_pass
      attr_accessor :redis_key_prefix
      attr_accessor :key_ciphertext

      def configure
        reset_config
        yield self
      end

      def reset_config
        self.redis_host = 'localhost'
        self.redis_port = 6379
        self.redis_path = nil
        self.redis_pass = nil
        self.redis_key_prefix = nil
        self.key_ciphertext = nil
      end
    end
  end
end
