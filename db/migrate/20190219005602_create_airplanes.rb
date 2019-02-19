class CreateAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplanes do |t|
      t.string :tail_number
      t.integer :cruise_speed
    end
  end
end
