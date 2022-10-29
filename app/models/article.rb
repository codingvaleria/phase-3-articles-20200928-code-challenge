class Article
#set reader for variables
    attr_reader :author, :magazine, :title
    @@all = []
    def initialize(author, magazine, title)
        #intialize variables
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end
#return an array of all Article instances
    def self.all
        @@all
    end

end
