module Ruboty
  module Handlers
    class French < Base
      on(
        /hello/i,
        name: "bonjour",
        description: "Return Hello in French")

      def bonjour(message)
        message.reply("Bonjour!")
      end
    end
  end
end
