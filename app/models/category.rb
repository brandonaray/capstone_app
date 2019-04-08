class Category < ApplicationRecord
  has_many :category_songs
  has_many :songs, through: :category_songs
end
