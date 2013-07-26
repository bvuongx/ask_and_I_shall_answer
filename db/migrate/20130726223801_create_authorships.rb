class CreateAuthorships < ActiveRecord::Migration
  def change
    create_table :questions_users, id: false do |t|
      t.integer :question_id
      t.integer :user_id
      t.timestamps
    end
  end
end
