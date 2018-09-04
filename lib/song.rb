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
    song1 = Song.new
    @@all << song1
    song1
  end

  def self.new_by_name(name)
    song1 = Song.new
    song1.name = name
    song1
  end

  def self.create_by_name(name)
    song1 = self.new_by_name(name)
    @@all << song1
    self
  end



end
