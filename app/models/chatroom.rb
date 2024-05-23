class Chatroom < ApplicationRecord
  belongs_to :event, dependent: :destroy, foreign_key: "event_id"
  has_many :messages, dependent: :destroy
end
