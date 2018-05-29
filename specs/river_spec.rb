require("minitest/autorun")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Graham")
    @fish2 = Fish.new("Billy")
    @fish3 = Fish.new("Craig")

    @river = River.new("Isonzo")
  end

  def test_get_river_name
    p @river
    assert_equal("Isonzo", @river.name())
  end

  def test_fish_count__empty
    assert_equal(0, @river.fish_count())
  end

  def test_fish_count__full
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    assert_equal(3, @river.fish_count())
  end

  # def test_fish_count__remove_fish
  #   skip
  #   @river.fish_taken()
  #   assert_equal(2, @river.fish_count())
  # end


end
