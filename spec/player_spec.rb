require 'player'

describe Player do
  subject(:dave) { Player.new("Dave") }
  subject(:mittens) { Player.new("Mittens") }

  describe '#name' do
    it "returns the Players name" do
      expect(dave.name).to eq "Dave"
    end
  end

  describe '#hit points' do
    it "returns the players HP" do
      expect(dave.hit_points).to eq described_class::FULL_HEALTH
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(mittens).to receive(:receive_damage)
      dave.attack(mittens)
    end
  end

  describe '#receive_damage' do
    it "reduces the players HP" do
      expect{ dave.receive_damage }.to change { dave.hit_points }.by(-10)
    end
  end

end
