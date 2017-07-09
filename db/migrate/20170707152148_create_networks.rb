class CreateNetworks < ActiveRecord::Migration[5.1]
  def change
    create_table :networks do |t|
      t.string :from_email
      t.string :to_email
      t.timestamps
    end
  end
end
