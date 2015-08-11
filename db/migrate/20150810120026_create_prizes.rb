class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.string :prize_type
      t.string :prize_type
      t.integer :prize_value
      t.integer :winner_id
      t.integer :contest_id

      t.timestamps null: false
    end
  end
end
