class UserProfilesController < ApplicationController
  before_action :authenticate_user!
  def edit
    @user_profile=current_user.user_profile
  end
  def update
    @user_profile=current_user.user_profile
    if @user_profile.update(user_profile_params)
      redirect_to root_path
    else
      render :new
    end
  end
  private
  def user_profile_params
    params.require(:user_profile).permit(:name,:birthday,:introduction,:phone,:email,:blog,:github,:attachment,:user_id)
  end
end
