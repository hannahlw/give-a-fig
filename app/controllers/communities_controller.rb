class CommunitiesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :destroy]

  def index
  end

  def new
    @community = Community.new
    @user = current_user
  end

  def create
    @community = Community.create(strong_params)
    @user = current_user
    redirect_to community_path(@community), notice: 'Community was successfully created.'
  end

  def show
    @community = Community.find(params[:id])
    @user = current_user
  end


  private

  def strong_params
    params.require(:community).permit(:name, :pickup_site, :tag)
  end

end
