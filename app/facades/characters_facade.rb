class CharactersFacade

  def self.create_characters(nation)
    data = CharactersService.get_characters(nation)
    data[0].map do|data|
      Character.new(data)
    end
  end
end
