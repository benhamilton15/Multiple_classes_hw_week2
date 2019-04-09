require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Ben")
    @fish2 = Fish.new("Pog")
    @fish3 = Fish.new("Tom")
    @fishes = [@fish1, @fish2, @fish3]
    @river1 = River.new("Flowy", @fishes)
  end

  def test_get_river_name
    assert_equal("Flowy", @river1.name)
  end

  def test_count_fish_in_river
    assert_equal(3, @river1.count_fish)
  end

end
