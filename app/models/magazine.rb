class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    # initalizing class variable all
    @@all << self
  end
# return an array of all magazine instances
  def self.all
    @@all
  end

end
