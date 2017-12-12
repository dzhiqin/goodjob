class WelcomeController < ApplicationController
  before_action :generate_user_profile!
  def index
    @jobs=Job.recent.limit(12)

  end
  private
  def generate_user_profile!
    if current_user
      UserProfile.create!(user_id: current_user.id) unless current_user.user_profile
    end
  end
end
