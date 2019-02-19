class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :airplane_id
      t.integer :pilot_id
      t.integer :origin_airport_id
      t.integer :destination_airport_id
      t.date :date
    end
  end
end
