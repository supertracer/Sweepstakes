class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :participant_name
      t.string :participant_email
      t.string :participant_phone
      t.integer :contest_id
      t.string :answer

      t.timestamps null: false
    end
  end
end
