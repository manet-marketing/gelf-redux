module GELF
  module Transport
    class HTTPS < HTTP
      def initialize(host, port: 443, path: nil, headers: nil)
        @uri = URI::HTTPS.build host: host, port: port
        setup(headers, path)
      end
    end
  end
end