require 'rails_helper'

RSpec.describe Character do
  it "creates a character poro" do
    data = JSON.parse(File.read("./spec/fixtures/character_info.json"), symbolize_names: true)
    character = Character.new(data)

    expect(character.name).to eq("Chan (Fire Nation admiral)")
    expect(character.nation).to eq("Fire Nation Navy")
  end
end
