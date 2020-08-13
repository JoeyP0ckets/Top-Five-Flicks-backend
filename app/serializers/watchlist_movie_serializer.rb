class WatchlistMovieSerializer < ActiveModel::Serializer
  attributes :id, :watchlist_id, :imdb_id, :poster, :title, :year
end
