class CreateSelfRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :self_ratings do |t|
      t.integer :overall_score
      t.integer :pickup_trash_score
      t.integer :conscious_score
      t.integer :score
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
