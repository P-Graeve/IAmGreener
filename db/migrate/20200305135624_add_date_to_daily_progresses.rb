class AddDateToDailyProgresses < ActiveRecord::Migration[5.2]
  def change
    add_column :daily_progresses, :date, :string
  end
end
