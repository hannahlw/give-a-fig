class FoodItem < ActiveRecord::Base
  belongs_to :poster, :class_name => "User", :foreign_key => "poster_id"
  belongs_to :claimer, :class_name => "User", :foreign_key => "claimer_id"
  belongs_to :community
end
