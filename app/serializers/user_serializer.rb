class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_one :watchlist
  has_many :watchlist_movies
  has_many :top_fives
  has_many :reviews

end
