class DropTableDailyProgresses < ActiveRecord::Migration[5.2]
  def change
    drop_table :daily_progresses
  end
end
