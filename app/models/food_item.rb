class FoodItem < ActiveRecord::Base
  belongs_to :poster, class_name: User
  belongs_to :claimer, class_name: User
  belongs_to :community
end
