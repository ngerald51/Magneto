class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :from_uid
      t.integer :to_uid
      t.integer :from_cid
      t.integer :to_cid
      t.string :notes
      t.timestamps
    end
  end
end
