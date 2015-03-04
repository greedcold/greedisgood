class Listing < ActiveRecord::Base

  include PgSearch
  pg_search_scope :search_everywhere, against: [:event]

  validates :event, :price, presence: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :user
# каждый список принадлежит отдному пользователю
end
