class Author
  #set name not to be changed
  attr_reader :name

  def initialize(name)
    @name = name

  end

  def articles
        #filters from all articles that have author equal to name
        Article.all.filter{|article|
         article.author==@name}
       
  end

  def magazines
    # get magazines instances from articles
    articles.map{|article|article.magazine}.uniq
  end

end
