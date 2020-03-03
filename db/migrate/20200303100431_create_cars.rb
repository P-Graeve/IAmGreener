class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :brand
      t.references :user, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
