class WatchlistSerializer < ActiveModel::Serializer
  attributes :id, :user_id

  has_many :watchlist_movies
end
