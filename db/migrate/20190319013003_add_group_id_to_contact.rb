class AddGroupIdToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :group_id, :integer
  end
end
