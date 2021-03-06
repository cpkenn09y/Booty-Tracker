class MapsController < ApplicationController
  respond_to :json, :html
  def index
    if session[:user_id]
      @user= User.find(session[:user_id])
    end
    users = User.joins(:cohort).where("latitude IS NOT NULL")
    @user_data = create_user_data_json(users)

    respond_to do |format|
      format.html
      format.json { render :json => @user_data}
      end
    end


private
  def create_user_data_json(users)
    users.map do |user|
      gravatar_url = Gravatar.new(user.email).image_url
      { :user => {
      name: user.name,
      image_url: gravatar_url,
      email: user.email,
      cohort_name: user.cohort,
      cohort_location: user.cohort.location,
      linked_in: user.linkedin_url,
      facebook: user.facebook_url,
      twitter: user.twitter_url,
      github: user.github_url,
      blog: user.blog,
      role: user.role,
      headline: user.headline,
      current_location: user.current_location,
      git_location: user.git_location,
      linkedin_location: user.linkedin_location,
      latitude: user.latitude,
      longitude: user.longitude,
    }}
    end
  end
end