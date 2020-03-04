class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.text :description
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
