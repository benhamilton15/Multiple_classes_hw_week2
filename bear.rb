class Bear

attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @belly_of_fish = []
  end

  def belly_count
    return @belly_of_fish.length
  end

  def eat_fish(number_of_fish, river)
    fish_eaten = river.fishes.pop(2)
    @belly_of_fish += fish_eaten
  end

  def roar
    return "ROAR!"
  end


end
