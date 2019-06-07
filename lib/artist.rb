require 'pry'
require_relative '../config/environment'

class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods

  def initialize
    super
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def self.all
    @@all
  end

end
