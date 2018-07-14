class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.date :event_date
      t.string :cpf
      t.string :card
      t.time :event_time
      t.references :kind, foreign_key: true

      t.timestamps
    end
  end
end
