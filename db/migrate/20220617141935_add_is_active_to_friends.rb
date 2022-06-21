class AddIsActiveToFriends < ActiveRecord::Migration[5.2]
  def change
    add_column :friends, :is_active, :boolean, default: false
  end
end
