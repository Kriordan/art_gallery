class Artist < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :birthplace
  validates_presence_of :style_of_art
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
end
