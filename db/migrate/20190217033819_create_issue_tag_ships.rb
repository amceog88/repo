class CreateIssueTagShips < ActiveRecord::Migration[5.2]
  def change
    create_table :issue_tag_ships do |t|
      t.integer :issuetag_id
      t.integer :issue_id
      t.timestamps
    end
  end
end
