class Event < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode
end
