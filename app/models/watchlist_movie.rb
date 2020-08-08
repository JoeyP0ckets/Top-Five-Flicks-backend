class WatchlistMovie < ApplicationRecord
  belongs_to :watchlist
  delegate :user, to: :watchlist
end
