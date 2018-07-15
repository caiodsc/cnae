class AddRecordedAtToRecord < ActiveRecord::Migration[5.1]
  def change
    add_column :records, :recorded_at, :time
  end
end
