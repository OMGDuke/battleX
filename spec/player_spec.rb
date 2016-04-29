require 'player'

describe Player do
  subject(:player) {described_class.new "Harold"}

  it "has a name" do
    expect(player.name).to eq "Harold"
  end
end
