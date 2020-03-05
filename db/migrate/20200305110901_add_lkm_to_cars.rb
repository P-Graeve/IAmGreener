class AddLkmToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :lkm, :float
  end
end
