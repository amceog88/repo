class AddColumnForIssue < ActiveRecord::Migration[5.2]
  def change
    add_column :issues, :is_readed, :boolean, default: false
  end
end
