class CreateCompanyNetworks < ActiveRecord::Migration[5.1]
  def change
    create_table :company_networks do |t|
      t.integer :from_cid
      t.integer :to_uid
      t.timestamps
    end
  end

end
