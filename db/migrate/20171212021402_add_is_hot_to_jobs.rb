class AddIsHotToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs,:is_hot,:boolean,default:false
  end
end
