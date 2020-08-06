class User < ApplicationRecord
  has_many :reviews 
  has_many :top_fives
  has_one :watchlist
end
