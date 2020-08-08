class TopFiveSerializer < ActiveModel::Serializer
  attributes :id, :category

  has_many :top_five_movies
end
