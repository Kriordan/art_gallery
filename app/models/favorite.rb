class Favorite < ActiveRecord::Base
  belongs_to :collection
  belongs_to :customer
  validates_presence_of :collection
  validates_presence_of :customer
end
