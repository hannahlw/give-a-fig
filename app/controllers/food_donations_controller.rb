class FoodDonationsController < ApplicationController
  def index
    @donationsites = FoodDonation.all
  end
end
