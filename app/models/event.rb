class Event < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :search_by_details,
    against: [:name, :description, :keywords, :location],
    using: {
      tsearch: { prefix: true }
    }

  belongs_to :user
  has_many_attached :photos
end
