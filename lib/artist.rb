require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs

  include Paramable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
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
