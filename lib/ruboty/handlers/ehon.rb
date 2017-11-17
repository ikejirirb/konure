module Ruboty
  module Handlers
    class Ehon < Base
      NAMESPACE = "ehon"

      on(/絵本追加 (?<title>.+)/i, name: "add_ehon", description: "絵本を追加する")
      on(/絵本リスト/i, name: "show_ehon", description: "絵本リストを見る")

      def add_ehon(message)
        title = message[:title]
        created_at = Time.now.getlocal("+09:00")
        updated_at = created_at

        if ehons.find {|ehon| ehon.has_value?(title) }
          ehons << {title: title, created_at: created_at, updated_at: updated_at, count: 0}
          message.reply("「#{title}」を追加したよ！")
        else
          message.reply("「#{title}」はもうあるよ")
        end
      end

      def show_ehon(message)
        message.reply(ehons)
      end

      private

      def ehons
        data[:ehons] ||= []
      end

      def data
        robot.brain.data[NAMESPACE] ||= {}
      end
    end
  end
end
