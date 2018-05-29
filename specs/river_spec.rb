require("minitest/autorun")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    fish1 = Fish.new("Graham")
    fish2 = Fish.new("Billy")
    fish3 = Fish.new("Craig")

    @river1 = River.new("Isonzo", [fish1, fish2, fish3])
  end

  def test_get_river_name
    assert_equal("Isonzo", @river1.name())
  end









end
