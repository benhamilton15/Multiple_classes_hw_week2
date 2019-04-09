class River

attr_reader :name, :fishes

  def initialize(name, many_fish)
    @name = name
    @fishes = many_fish
  end

  def count_fish
    return @fishes.length
  end

end
