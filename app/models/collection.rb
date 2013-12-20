class Collection < ActiveRecord::Base

  has_many :artworks
  has_many :favorites
  validates_presence_of :name

end
