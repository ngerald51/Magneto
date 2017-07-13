class CreateUcNetworks < ActiveRecord::Migration[5.1]
  def change
    create_table :uc_networks do |t|
      t.integer :from_uid
      t.integer :to_cid
      t.timestamps
    end
  end

end
