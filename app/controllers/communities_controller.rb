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
    @community.admin_id = current_user.id
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
    else
      @community.users << current_user
      @community.save
    end
  end

  def invite
    @community = Community.find(params["id"])
    if User.find_by(email: params["community"]["members"])
      @member = User.find_by(email: params["community"]["members"])
      session["member"]=@member
      MyMailer.add_existing_member(@member, @community).deliver_now
    else #user needs to sign up
      @member = User.new(email: params["community"]["members"])
      MyMailer.add_new_member(@member, @community).deliver_now
    end
  end

  def edit
    @community = Community.find(params[:id])
  end

  private

  def strong_params
    params.require(:community).permit(:name, :pickup_site, :tag)
  end

end
