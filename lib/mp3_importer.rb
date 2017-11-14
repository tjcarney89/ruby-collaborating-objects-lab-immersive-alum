require 'pry'
class MP3Importer

  attr_accessor :path, :files

  def initialize(filepath)
    @path = filepath
    @files = []
    files = Dir.entries(@path)
    files.each do |file|
      if file.include?("mp3")
        @files << file
      end
    end
  end

  def import
    @files.each do |file|
      song = Song.new_by_filename(file)
    end
  end
end
