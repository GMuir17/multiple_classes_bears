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

  def eat_fish(river)
    dead_fish = @fish_number.slice(1)
    @stomach_contents.push(dead_fish)
    @fish_number.delete(dead_fish)
  end







end
