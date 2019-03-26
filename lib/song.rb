class Song
attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def self.new_by_filename(title)
  @name = title.split(' - ')[1]
  @artist = title.split(' - ')[0]
  song = Song.new(@name)
  song.artist_name = @artist
  song
end

def artist_name=(name)
   @artist = Artist.find_or_create_by_name(name)
   @artist.add_song(self)
end




end
