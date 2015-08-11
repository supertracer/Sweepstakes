class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :client_email
      t.string :client_phone
      t.string :company_name
      t.string :company_url
      t.string :participant_id
      t.integer :contest_id

      t.timestamps null: false
    end
  end
end
