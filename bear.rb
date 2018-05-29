class Bear

  attr_reader(:name)

  def initialize(name, type)
    @name = name
    @type = type
    @stomach_contents = []
  end

  def stomach_contents_count()
    return @stomach_contents.count()
  end

  # def eat_fish(river)
  #   @stomach_contents.push(@fish_number)
  # end

  def eat_fish(river)
    eaten_fish = river.fish_taken()
    @stomach_contents.push(eaten_fish)
  end

end
