require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class BearTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Ben")
    @fish2 = Fish.new("Pog")
    @fish3 = Fish.new("Tom")
    @fishes = [@fish1, @fish2, @fish3]
    @river1 = River.new("Flowy", @fishes)
    @bear1 = Bear.new("Trinket", "Grizzly")
  end

  def test_get_bear_name
    assert_equal("Trinket", @bear1.name)
  end

  def test_fish_in_belly
    assert_equal(0, @bear1.belly_count)
  end

  def test_bear_eats_fish_from_river
    @bear1.eat_fish(2, @river1)
    assert_equal(1, @river1.count_fish)
    assert_equal(2, @bear1.belly_count)
  end

  def test_bear_can_roar
    assert_equal("ROAR!", @bear1.roar)
  end

end
