require 'pry'

class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def name=(name)
    @name = name
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if name == artist.name
         return artist
      end
    end
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end
