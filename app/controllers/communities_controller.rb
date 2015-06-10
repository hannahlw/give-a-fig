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
    @community.save
    redirect_to community_path(@community), notice: 'Community was successfully created.'
  end

  def show
    @community = Community.find(params[:id])
    @user = current_user
  end

  def update
    # binding.pry
    @community = Community.find(params[:id])
    @user = current_user
    if @community.users.include?(current_user)
      @user_community = UserCommunity.find_by(community_id: @community.id, user_id: @user.id)
      @user_community.destroy
      current_user.posted_food.destroy_all
      redirect_to community_path(@community)
    else
      @community.users << current_user
      @user.communities << @community
      @community.save
      redirect_to community_path(@community)
    end
  end

  def invite
    @community = Community.find(params["id"])
    if User.find_by(email: params['user']['email'])
      member = Invitee.create(email: params['user']['email'])
     @community.invitees << member
      MyMailer.add_existing_member(member, @community).deliver_now
    else # user needs to sign up
      member = Invitee.create(email: params['user']['email'])
      @community.invitees << member
      MyMailer.add_new_member(member, @community).deliver_now
    end
  end

  def edit
    @community = Community.find(params[:id])
  end

  private

  def strong_params
    params.require(:community).permit(:name, :pickup_site, :tag, :admin_id)
  end
end
