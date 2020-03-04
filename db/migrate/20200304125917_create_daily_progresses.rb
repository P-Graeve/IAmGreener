class CreateDailyProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_progresses do |t|
      t.references :user, foreign_key: true
      t.integer :tree_amount
      t.boolean :daily_challenge_completed
      t.references :challenge, foreign_key: true

      t.timestamps
    end
  end
end
