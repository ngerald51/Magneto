class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.integer :user_id
      t.string :skill
      t.timestamps
    end
  end
end
