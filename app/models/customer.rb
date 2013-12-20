class Customer < ActiveRecord::Base
  has_many :artworks
  has_many :favorites
  validates_presence_of :name
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :amount_spent, :numericality => { :greater_than_or_equal_to => 0 }
end
