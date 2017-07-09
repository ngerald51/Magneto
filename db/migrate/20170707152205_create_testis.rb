class CreateTestis < ActiveRecord::Migration[5.1]
  def change
    create_table :testis do |t|
      t.integer :from_uid
      t.integer :to_uid
      t.string :note
      t.timestamps
    end
  end
end
