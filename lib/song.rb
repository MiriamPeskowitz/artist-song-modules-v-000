require 'pry'

class Song
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
