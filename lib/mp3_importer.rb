require 'pry'

class MP3Importer
attr_accessor :path

def initialize(path)
  @path = path
end

def files
@files = []
File.foreach('@path').map { |line| line.split('.mp3') }
@files
binding.pry
end

def import
   @files.each do |file|
   song = Song.new_by_filename(file)
   end
end


end
