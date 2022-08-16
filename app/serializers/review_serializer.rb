class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :return, :bathroom, :rating, :user
  belongs_to :bathroom
  belongs_to :user
end
