class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.integer :name
      t.integer :count
      t.references :challenge, foreign_key: true

      t.timestamps
    end
  end
end
