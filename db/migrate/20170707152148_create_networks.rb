class CreateNetworks < ActiveRecord::Migration[5.1]
  def change
    create_table :networks do |t|
      t.integer :from_uid
      t.integer :to_uid
      t.timestamps
    end
  end


end
