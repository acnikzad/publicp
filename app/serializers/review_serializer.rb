class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :cleanliness, :return, :recommend, :bathroom, :rating, :user
  belongs_to :bathroom
  belongs_to :user
end
