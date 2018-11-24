class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def slug
    self.name.downcase.gsub(' ', '-')
  end


# The find_by_slug method should use the slug method to retrieve a
# song/artist/genre from the database and return that entry.

  def self.find_by_slug(slug)
    self.all.find{|i| i.slug == slug}
  end


end
