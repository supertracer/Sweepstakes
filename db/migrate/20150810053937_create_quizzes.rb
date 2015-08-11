class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :contest_id
      t.text :ques_content
      t.string :opt_A
      t.string :opt_B
      t.string :opt_c
      t.string :opt_d
      t.string :correct_opt

      t.timestamps null: false
    end
  end
end
