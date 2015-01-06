module SecureIndex
  class Index
    class << self
      def index(key, value)
        Client.instance.commit(key, value)
      end
    end
  end
end
