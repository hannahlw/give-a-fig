class CommunitiesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :destroy]

  def index
  end

  def new
    @community = Community.new
  end

  def create
    # binding.pry
    @community = Community.create(strong_params)
    #@user = current_user
    @community.users << current_user
    # call @user.communities to see all user's communities
    # @user.communities << @community
    redirect_to community_path(@community), notice: 'Community was successfully created.'
  end

  def show
     # binding.pry
    @community = Community.find(params[:id])
    @user = current_user
  end

  def update
    @community = Community.find(params[:id])
    @user = current_user
    if @community.users.include?(current_user)
      @user_community = UserCommunity.find_by(community_id: @community.id, user_id: @user.id)
      @user_community.destroy
      
    else
      @community.users << current_user
      @community.save
      
    end
    
  end





  private

  def strong_params
    params.require(:community).permit(:name, :pickup_site, :tag)
  end

end
