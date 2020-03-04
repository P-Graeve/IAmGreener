class CreateNotificatons < ActiveRecord::Migration[5.2]
  def change
    create_table :notificatons do |t|
      t.references :user, foreign_key: true
      t.string :message

      t.timestamps
    end
  end
end
