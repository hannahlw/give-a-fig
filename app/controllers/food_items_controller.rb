class FoodItemsController < ApplicationController

  def new
    @fooditem = FoodItem.new
  end

  def create
     # binding.pry
    @fooditem = FoodItem.create(fooditems_params)
    @community = Community.find_by(params[:community_id])
    redirect_to community_path(@community)
  end

  private

  def fooditems_params
    params.require(:food_item).permit(:name, :quanity, :description, :user_id, :community_id)
  end

end
