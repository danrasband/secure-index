module SecureIndex
  class Client
    class << self
      def client
        @instance ||= self.new
      end
    end

    attr_accessor :redis
    attr_accessor :key_prefix
    attr_accessor :key_ciphertext

    def initialize
      self.redis = Redis.new({
        host: Configuration.redis_host,
        port: Configuration.redis_port,
        path: Configuration.redis_path,
        pass: Configuration.redis_pass,
      })
      self.key_prefix = Configuration.redis_key_prefix
      self.key_ciphertext = Configuration.key_ciphertext
    end

    def commit(key, value)
      redis.set("#{key_prefix}#{key}", value)
    end

    def retrieve(key)
      redis.get("#{key_prefix}#{key}")
    end
  end
end
