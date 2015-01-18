class Listing < ActiveRecord::Base

  validates :event, :price, presence: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :user
# каждый список принадлежит отдному пользователю
end
