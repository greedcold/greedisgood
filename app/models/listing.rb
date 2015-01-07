class Listing < ActiveRecord::Base

  validates :data, :sobitie, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
