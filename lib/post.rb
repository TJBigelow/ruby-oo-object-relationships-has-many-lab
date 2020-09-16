class Post
    attr_reader :title, :author
    @@all = []

    def initialize(title)
        @title = title
        @author = Author.new(nil)
        @@all << self
    end

    def author=(author)
        @author = author
    end

    def self.all
        @@all
    end

    def author_name
        self.author.name
    end
end