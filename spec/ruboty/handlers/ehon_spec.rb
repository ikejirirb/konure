require "ruboty"
require "ruboty/handlers/ehon"

describe Ruboty::Handlers::Ehon do
  let(:robot) do
    Ruboty::Robot.new
  end

  describe "#add_ehon" do
    let(:said) do
      "ruboty 絵本追加 しろくまちゃんのほっとけーき"
    end

    let(:replied) do
      "「しろくまちゃんのほっとけーき」を追加したよ！"
    end

    it "returns title" do
      expect(robot).to receive(:say).with(
        hash_including(
          body: replied
        )
      )
      robot.receive(body: said)
    end
  end
end
