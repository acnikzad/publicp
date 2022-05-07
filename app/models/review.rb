class Review < ApplicationRecord
  belongs_to :user
  belongs_to :bathroom

  def bathoom
    Bathroom.find_by(id: bathroom_id)
  end

  def user
    User.find_by(id: user_id)
  end
end
