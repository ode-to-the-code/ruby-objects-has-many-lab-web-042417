class Artist

  attr_accessor :name

  @@song_count = []


def initialize(name)
  @name = name
  @songs = []
end

def songs
  @songs
end

def add_song(song)
  @songs << song
  song.artist = self
  @@song_count << self
end

def add_song_by_name(song_name)
  x = Song.new(song_name)
  @songs << x
  x.artist = self
  @@song_count << self


end

def self.song_count
  @@song_count = @@song_count.count
end

end
