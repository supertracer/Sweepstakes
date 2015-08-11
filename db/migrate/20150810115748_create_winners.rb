class CreateWinners < ActiveRecord::Migration
  def change
    create_table :winners do |t|
      t.integer :prize_id
      t.integer :contest_id
      t.integer :participant_id

      t.timestamps null: false
    end
  end
end
