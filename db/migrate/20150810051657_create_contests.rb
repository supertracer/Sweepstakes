class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :name
      t.integer :client_id
      t.integer :participant_id
      t.integer :quiz_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
