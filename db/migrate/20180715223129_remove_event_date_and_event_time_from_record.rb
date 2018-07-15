class RemoveEventDateAndEventTimeFromRecord < ActiveRecord::Migration[5.1]
  def change
    remove_column :records, :event_date, :date
    remove_column :records, :event_time, :time
  end
end
