require 'game'

describe Game do
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}
  subject(:game) {described_class.new player_1}

  it "starts with player 1" do
    expect(game.player_1).to eq player_1
  end

  it "starts with player 1 as attacker" do
    expect(game.attacker).to eq player_1
  end

  it "starts with nil player_2" do
    expect(game.player_2).to be_nil
  end

  describe "#add_player_2" do
    it "assigns player 2" do
      game.add_player_2 player_2
      expect(game.player_2).to eq player_2
    end

    it "assigns as defender" do
      game.add_player_2 player_2
      expect(game.defender).to eq player_2
    end
  end

end
