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









end
