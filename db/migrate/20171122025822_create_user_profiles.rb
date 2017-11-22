class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.date :birthday
      t.string :introduction
      t.string :phone
      t.string :email
      t.string :blog
      t.string :github
      t.string :attachment
      t.integer :user_id
      t.timestamps
    end
  end
end
