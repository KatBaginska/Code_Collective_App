class Event < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
end
