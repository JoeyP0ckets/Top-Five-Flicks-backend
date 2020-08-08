class TopFive < ApplicationRecord
  belongs_to :user
  has_many :top_five_movies
end
