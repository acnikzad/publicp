class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :cleanliness, :return, :recommend, :bathroom, :rating
end
