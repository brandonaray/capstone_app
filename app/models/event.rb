class Event < ApplicationRecord
  validates :event_duration, presence: true, numericality: {greater_than: 0}

  has_many :event_users
  has_many :users, through: :event_users
  has_many :event_songs, through: :event_users
end
