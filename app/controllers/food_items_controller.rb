class FoodItemsController < ApplicationController

  def new
    @fooditem = FoodItem.new
  end

  def create
    @fooditem = FoodItem.create(fooditems_params)
    @community = Community.find(params[:food_item][:community_id])
    redirect_to community_path(@community)
  end

  def update
    @food = FoodItem.find(params[:id])
    @food.update(claimer_id: current_user.id, status: "claimed")
  end

  def destroy
    @food = FoodItem.find(params[:id])
    @food.destroy
  end

  private

  def fooditems_params
    params.require(:food_item).permit(:name, :quantity, :description, :poster_id, :community_id)
  end

end
