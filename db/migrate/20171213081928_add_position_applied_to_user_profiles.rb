class AddPositionAppliedToUserProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :user_profiles,:position_applied,:string
  end
end
