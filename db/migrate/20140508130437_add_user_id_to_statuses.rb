class AddUserIdToStatuses < ActiveRecord::Migration
  def change
  	add_column :nightmares, :user_id, :integer
  	add_index :nightmares, :user_id
  	remove_column :nightmares, :name
  end
end
