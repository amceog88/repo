class CreateIssueGroupShips < ActiveRecord::Migration[5.2]
  def change
    create_table :issue_group_ships do |t|
      t.integer :issue_id
      t.integer :group_id

      t.timestamps
    end
  end
end
