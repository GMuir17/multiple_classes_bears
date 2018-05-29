class River

  attr_reader(:name)

  def initialize(name)
    @name = name
    @fish_number = []
  end

  def fish_count()
    return @fish_number.count()
  end

  def add_fish(fish)
    @fish_number.push(fish)
  end

  # def fish_taken()
  #   @fish_number.delete()
  # end




end
