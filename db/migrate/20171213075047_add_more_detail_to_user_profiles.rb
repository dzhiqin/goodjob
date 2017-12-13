class AddMoreDetailToUserProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :user_profiles,:avatar,:string
    add_column :user_profiles,:prior_experience,:string
    add_column :user_profiles,:research_interests,:string
    add_column :user_profiles,:education,:string
    add_column :user_profiles,:facebook,:string
    add_column :user_profiles,:linkedin,:string
    add_column :user_profiles,:twitter,:string
    add_column :user_profiles,:weixin,:string
    add_column :user_profiles,:stackoverflow,:string
  end
end
