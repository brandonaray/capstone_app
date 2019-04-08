class Event < ApplicationRecord
  has_many :event_users
  has_many :users, through: :event_users
  has_many :event_songs, through: :event_users
end
