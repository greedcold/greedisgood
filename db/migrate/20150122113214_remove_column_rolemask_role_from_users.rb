class RemoveColumnRolemaskRoleFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :roles_mask, :string
  end
end
