class Character
  attr_reader :name, :nation

  def initialize(data)
    @name = data[:name]
    @nation = data[:affiliation]
  end
end
