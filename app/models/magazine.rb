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

  def contributors
    #filter articles that match article.magazine.name to name of magazine instance we're checking
    #map the articles.author.name get uniq     
    Article.all.filter{|article|article.magazine.name==@name}
    .map{|article|article.author}.uniq
  end

end
