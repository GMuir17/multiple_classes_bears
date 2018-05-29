class River

  attr_reader(:name)

  def initialize(name, fish_number)
    @name = name
    @fish_number = fish_number
  end

  def fish_count()
    return @fish_number.count()
  end











end
