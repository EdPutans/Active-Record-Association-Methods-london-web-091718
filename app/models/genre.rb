class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Song.all.each { |song| song.genre}.uniq.count
  end

  def artist_count
    Song.all.each {|song| song.artist}.uniq.count
  end

  def all_artist_names
    Song.all.map {|song| song.artist.name}.uniq
  end
end
