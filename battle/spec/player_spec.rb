describe Player do
  it "returns the players name" do
    player = Player.new("Ash")
    expect(player.name).to eq("Ash")
  end
end
