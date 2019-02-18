class AddUserRoleAndIssuePosition < ActiveRecord::Migration[5.2]
  def change
    add_column :issues, :position, :integer

    add_column :users, :role, :string
  end
end
