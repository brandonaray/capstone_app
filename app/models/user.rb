class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :event_users
  has_many :events, through: :event_users
  has_many :event_songs, through: :event_users
  
end