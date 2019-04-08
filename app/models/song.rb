class Song < ApplicationRecord
  has_many :song_versions
  has_many :category_songs
  has_many :categories, through: :category_songs
end
