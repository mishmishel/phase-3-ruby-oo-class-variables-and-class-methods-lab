class Song
    attr_accessor :name, :artist, :genre

    #Initialize count to 0 and genres to an empty array
    @@count = 0
    @@genres = []
    @@artists = []
  
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      
      # Increment @@count when a new song is created
      @@count += 1

      @@genres << genre

      @@artists << artist

    end
    
    # Define a class method to access @@count
    def self.count
        @@count
    end

    # Define a class method to access @@genres
    def self.genres
        @@genres.uniq
    end

    # Define a class method to access @@artists
    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count_hash = Hash.new(0) # Initialize a hash with default values of 0
      
        # Iterate through genres and count occurrences
        @@genres.each { |genre| genre_count_hash[genre] += 1 }
      
        genre_count_hash
    end

    def self.artist_count
        artist_count_hash = Hash.new(0) # Initialize a hash with default values of 0
      
        # Iterate through artists and count occurrences
        @@artists.each { |artist| artist_count_hash[artist] += 1 }
      
        artist_count_hash
    end

  end