module Ruboty
  module Handlers
    class Ahoj < Base
      on(/ahoj/i, name: "ahoj", description: "チェコ語の挨拶をする")

      def ahoj(message)
        message.reply("Ahoj!! 😁")
      end
    end
  end
end