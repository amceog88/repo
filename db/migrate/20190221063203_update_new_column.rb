class UpdateNewColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :role, :string, default: "normal"

    rename_column :issues, :position, :priority
  end
end
