class BathroomSerializer < ActiveModel::Serializer
  attributes :id, :label, :reviews
  has_many :reviews
end
