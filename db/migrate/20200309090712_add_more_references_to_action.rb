class AddMoreReferencesToAction < ActiveRecord::Migration[5.2]
  def change
    add_reference :actions, :car, foreign_key: true
    add_reference :actions, :self_rating, foreign_key: true
  end
end
