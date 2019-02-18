class AddIssueColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :issues, :end_time, :datetime
    add_column :issues, :state, :string
  end
end
