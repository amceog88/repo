class CreateIssuetags < ActiveRecord::Migration[5.2]
  def change
    create_table :issuetags do |t|
      t.string :name

      t.timestamps
    end
  end
end
