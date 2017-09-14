class Listing < ActiveRecord::Base

  belongs_to :neighborhood
  belongs_to :host, :class_name => "User"
  has_many :reservations
  has_many :reviews, :through => :reservations, :foreign_key => 'listing_id'
  has_many :guests, :class_name => "User", through: :reservations

end
