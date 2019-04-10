class Bear

attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @belly_of_bear = []
  end

  def belly_count
    return @belly_of_bear.length
  end

  def eat_fish(number_of_fish, river)
    fish_eaten = river.fishes.pop(number_of_fish)
    @belly_of_bear += fish_eaten
  end

  def roar
    return "ROAR!"
  end


end
