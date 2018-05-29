require("minitest/autorun")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test

  def setup
    fish1 = Fish.new("Graham")
    fish2 = Fish.new("Billy")
    fish3 = Fish.new("Craig")

    @river1 = River.new("Isonzo", [fish1, fish2, fish3])

    @bear = Bear.new("Luigi", "Brown")
  end

  def test_get_bear_name
    assert_equal("Luigi", @bear.name())
  end

  def test_stomach_contents_count__empty
    assert_equal(0, @bear.stomach_contents_count())
  end

  def test_stomach_contents_count__taken_from_river
    @bear.eat_fish(@river)
    assert_equal(1, @bear.stomach_contents_count())
  end





end
