class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.class.all << song
    song
  end

  def self.new_by_name (name)
    song = Song.new
    song.name = name
    song
  end
  def self.create_by_name (name)
    song = Song.new
    song.name = name
    song.class.all << song
    song
  end
  def self.find_by_name (name)
    @@all.detect {|song| song == name}
  end

end
