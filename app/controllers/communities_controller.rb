class CommunitiesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :destroy]

  def index
    @communities = Community.all
  end

  def new
    @community = Community.new
  end

  def create
    @community = Community.create(strong_params)
    @community.users << current_user
    redirect_to community_path(@community), notice: 'Community was successfully created.'
  end

  def show
    @community = Community.find(params[:id])
    @user = current_user
  end

  def update
    @community = Community.find(params[:id])
    @user = current_user
    if @community.users.include?(current_user)
      @user_community = UserCommunity.find_by(community_id: @community.id, user_id: @user.id)
      @user_community.destroy
      current_user.my_food.destroy_all
      redirect_to community_path(@community)
    else
      @community.users << current_user
      @community.save
      redirect_to community_path(@community)
    end
  end

  private

  def strong_params
    params.require(:community).permit(:name, :pickup_site, :tag)
  end

end
