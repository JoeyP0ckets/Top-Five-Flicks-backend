class WatchlistMovieSerializer < ActiveModel::Serializer
  attributes :id, :imdb_id, :poster, :title, :year
end
