require 'player'

describe Player do
  subject(:player) { described_class.new("Josh") }

  it "it instantiates a new class" do
    expect(player).to be_a_kind_of Player
  end

  it "returns the Players name" do
    expect(player.name).to eq "Josh"
  end

end
