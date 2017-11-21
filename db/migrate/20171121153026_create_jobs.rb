class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :title
      t.string :description
      t.string :contact_email
      t.string :wage_lower_bound
      t.string :wage_upper_bound
      t.string :company_address
      t.boolean :is_hidden
      t.string :work_location
      t.string :skill_requirement
      t.string :remuneration
      t.integer :number_of_hiring
      t.string :official_website
      t.timestamps
    end
  end
end
