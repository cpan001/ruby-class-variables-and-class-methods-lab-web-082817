require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    self.genres.each_with_object({}) do |genre, hash|
      hash[genre] = @@genres.count(genre)
    end
  end

  def self.artist_count
    self.artists.each_with_object({}) do |artist, hash|
      hash[artist] = @@artists.count(artist)
    end
  end

end

#
# binding.pry
#
# ""
