class CategorySong < ApplicationRecord
  belongs_to :song
  belongs_to :category
end
