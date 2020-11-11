require 'player'

describe Player do
  subject(:player) {described_class.new("Josh")}
  subject(:Josh) { described_class.new("Josh") }
  subject(:Mittens) { described_class.new("Mittens") }
  it "it instantiates a new class" do
    expect(player).to be_a_kind_of Player
  end

  it "returns the Players name" do
    expect(player.name).to eq "Josh"
  end

  it "returns the Players HP" do
    expect(player.hp).to eq(Player::FULL_HEALTH)
  end

  describe '#damage' do
    it "damages the player" do
      expect{ subject.damage }.to change {subject.hp}.by(-10)
    end
  end

end
