class AddLogoSloganToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs,:logo,:string
    add_column :jobs,:slogan,:string
  end
end
