class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.integer :user_id
      t.string :school
      t.string :year
      t.string :level
      t.string :cert
      t.timestamps
    end
  end
end
