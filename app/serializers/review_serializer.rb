class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :directing, :acting, :cinematography, :art_direction, :soundtrack, :rating
end
