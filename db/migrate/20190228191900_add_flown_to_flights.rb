class AddFlownToFlights < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :flown, :boolean, default: false
  end
end
