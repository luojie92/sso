module Sso
  module Connection
    module Message
      def send_message(body)
        http_post(send_url, body.merge("agentid": agentid))
      end

      private

      def send_url
        "#{host}messages"
      end
    end
  end
end
