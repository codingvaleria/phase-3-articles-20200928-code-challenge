class Article
#set reader for variables
    attr_reader :author, :magazine, :title

    def initialize(author, magazine, title)
        #intialize variables
        @author = author
        @magazine = magazine
        @title = title
    end


end
