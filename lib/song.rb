require 'pry'
require_relative '../config/environment.rb'

class Song

  attr_accessor :name
  attr_reader :artist

  @@all = []

  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end

end
