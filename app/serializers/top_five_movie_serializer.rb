class TopFiveMovieSerializer < ActiveModel::Serializer
  attributes :id, :imdb_id, :title
end
