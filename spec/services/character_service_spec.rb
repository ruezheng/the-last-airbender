require 'rails_helper'

RSpec.describe CharactersService do
  it "fetches data for characters by nation", :vcr do
    response = CharactersService.get_characters("Fire Nation")
    
    expect(response).to have_key(:data)
    expect(response[:data]).to be_an(Array)
    expect(response[:data].first).to have_key(:name)
    expect(response[:data].first).to have_key(:affiliation)
  end
end
