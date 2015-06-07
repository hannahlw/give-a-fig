class FoodItemsController < ApplicationController

  def new
    @fooditem = FoodItem.new
  end

  def create
    @fooditem = FoodItem.create(fooditems_params)
    # redirect_to community_path
  end

  private

  def fooditems_params
    params.require(:food_item).permit(:name, :quanity, :description, :user_id, :community_id)
  end

end
