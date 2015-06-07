class UserCommunitiesController < ApplicationController
  def create
   UserCommunity.create
  end

  def destroy
    @user_community = UserCommunity.find(params[:id])
    @user_community.destroy
  end
end