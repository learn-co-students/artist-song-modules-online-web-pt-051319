require 'pry'

class Artist
  extend Memorable    # responsible for defining the method as a class method vs instance (include)
  # extend Findable::ClassMethod
  include Paramable
  
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def self.find_by_name(name)
    @@artists.detect{|artist| artist.name == name}
  end

  def self.all
    @@artists
  end


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
