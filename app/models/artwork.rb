class Artwork < ActiveRecord::Base
  belongs_to :artist
  belongs_to :customer
  belongs_to :collection

  validates_presence_of :name
  validates_presence_of :artist
  validates_presence_of :created_date
  validates_presence_of :placed_on_sale_date
  validates_presence_of :customer
  validates_presence_of :available
  validates_presence_of :type_of_art
  validates_presence_of :collection
  
  validates :cost, :numericality => { :greater_than => 0 }
end
