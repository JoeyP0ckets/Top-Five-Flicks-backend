class TopFiveSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :category, :titleOne, :titleTwo, :titleThree, :titleFour, :titleFive
end
