class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :ask_a_question
      t.string :answer_the_question

      t.timestamps
    end
  end
end
