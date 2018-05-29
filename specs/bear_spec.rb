require("minitest/autorun")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Graham")
    @fish2 = Fish.new("Billy")
    @fish3 = Fish.new("Craig")

    @river = River.new("Isonzo")

    @bear = Bear.new("Luigi", "Brown")
  end

  def test_get_bear_name
    assert_equal("Luigi", @bear.name())
  end

  def test_stomach_contents_count__empty
    assert_equal(0, @bear.stomach_contents_count())
  end

  def test_add_fish_to_river_within_bear_class
    @river.add_fish(@fish1)
    assert_equal(1, @river.fish_count())
  end

  def test_stomach_contents_count__taken_from_river
    @river.add_fish(@fish1)
    @bear.eat_fish(@river)
    assert_equal(1, @bear.stomach_contents_count())
  end

  def test_number_of_fish_after_bear_has_fed
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @bear.eat_fish(@river)
    assert_equal(1, @river.fish_count())
  end

end
