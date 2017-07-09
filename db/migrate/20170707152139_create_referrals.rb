class CreateReferrals < ActiveRecord::Migration[5.1]
  def change
    create_table :referrals do |t|
      t.integer :ref_id
      t.integer :can_id
      t.integer :job_id
      t.timestamps
    end
  end
end
