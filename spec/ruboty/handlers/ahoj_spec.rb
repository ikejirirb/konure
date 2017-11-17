require "ruboty"
require "ruboty/handlers/ahoj"

describe Ruboty::Handlers::Ahoj do
  let(:robot) do
    Ruboty::Robot.new
  end

  let(:reply) do
    "Ahoj!! 😁"
  end

  describe "#ahoj" do
    it "returns ahoj to ahoj" do
      expect(robot).to receive(:say).with(
        hash_including(
          body: reply
        )
      )
      robot.receive(body: "ruboty ahoj")
    end
  end
end
