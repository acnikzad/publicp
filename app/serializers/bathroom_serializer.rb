class BathroomSerializer < ActiveModel::Serializer
  attributes :id, :label, :reviews, :average_rating
  has_many :reviews
end
