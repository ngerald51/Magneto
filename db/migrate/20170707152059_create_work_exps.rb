class CreateWorkExps < ActiveRecord::Migration[5.1]
  def change
    create_table :work_exps do |t|
      t.integer :user_id
      t.string :company
      t.string :detail
      t.string :duration
      t.timestamps
    end
  end
end
