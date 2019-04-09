require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Trinket", "Grizzly")
  end

  def test_get_bear_name
    assert_equal("Trinket", @bear1.name)
  end

end
