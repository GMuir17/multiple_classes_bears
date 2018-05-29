require("minitest/autorun")
require_relative("../fish.rb")

class FishTest < MiniTest::Test


  def setup
    @fish1 = Fish.new("Graham")
    @fish2 = Fish.new("Billy")
    @fish3 = Fish.new("Craig")
  end

  def test_get_fish_name
    assert_equal("Graham", @fish1.name())
  end


end
