class RemoveColumnRolemaskRoleFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :roles_mask, :string
    remove_column :users, :role, :string
  end
end
