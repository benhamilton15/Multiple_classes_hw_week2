require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test


  def setup
    @fish1 = Fish.new("Sally")
  end

  def test_get_fish_name
    assert_equal("Sally", @fish1.name)
  end

end
