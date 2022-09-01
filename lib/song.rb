require 'pry'
extend Memorable
class Song
  attr_accessor :name
  attr_reader :artist

  include Paramable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  @@songs = []

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end 
end
