class Event < ApplicationRecord
  include PgSearch::Model
  acts_as_taggable_on :tags

  pg_search_scope :search_by_details,
    against: [:name, :description, :keywords, :location],
    using: {
      tsearch: { prefix: true }
    }

  belongs_to :user
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode
  has_one :chatroom, dependent: :destroy
  has_many :bookings
  has_many :users, through: :bookings

  # after_create :create_chat_room

  # private

  # def create_chat_room
  #   Chatroom.create(event: self)
  # end
end
