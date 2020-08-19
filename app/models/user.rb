class User < ApplicationRecord
  has_many :reviews 
  has_many :top_fives
  has_one :watchlist
  has_many :watchlist_movies, through: :watchlist
  has_secure_password

  validates :username, presence: true, uniqueness: true 

    after_create :build_watchlist

    def build_watchlist
        Watchlist.create(user: self)
    end
end