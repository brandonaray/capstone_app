class EventUser < ApplicationRecord
  validates :user_id, presence: true, numericality: {greater_than: 0}
  validates :event_id, presence: true, numericality: {greater_than: 0}

  belongs_to :event
  belongs_to :user
  has_many :event_songs
end
