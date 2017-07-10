class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.integer :coy_id
      t.integer :bounty
      t.string :details
      t.string :title
      t.string :jobtype
      t.integer :shortlists
      t.string :sector
      t.timestamps
    end
  end
end
