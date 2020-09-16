class Song
    attr_reader :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        @artist = Artist.new(nil)
        @@all << self
    end

    def artist=(artist)
        @artist = artist
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist.name
    end
end