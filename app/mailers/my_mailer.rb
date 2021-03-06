class MyMailer < Devise::Mailer
  helper :application # gives access to all helpers defined within `application_helper`.
  include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  default template_path: 'devise/mailer' # to make sure that your mailer uses the devise views
  default from: "giveafig.flatiron@gmail.com"

  def add_new_member(user, community)
    @community = community
    @url = community_path(@community)
    @email = user.email
    mail(to: @email, subject: "Hello, New Member!")
  end

  def add_existing_member(user, community)
    @community = community
    @email = user.email
    mail(to: @email, subject: "Hello, Existing Member!")
  end

  def send_to_admin(email, community, requester_name)
    @community = community
    @url = community_path(@community)
    @email = email
    @requester_name = requester_name
    mail(to: @email, subject: "You have a request to join your community!")
  end

  def send_to_rejected(rejected, community)
     @url = communities_path
     @email = rejected.email
     @community = community
     mail(to: @email, subject: "We're sorry this group is private. Try Starting Your Own Community")
  end

  def send_to_accepted(accepted, community)
    @community = community
    @email = accepted.email
    @url = community_path(@community)
    mail(to: @email, subject: "You have been accepted into a new community")
  end
end
