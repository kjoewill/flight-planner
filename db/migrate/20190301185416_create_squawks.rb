class CreateSquawks < ActiveRecord::Migration[5.2]
  def change
    create_table :squawks do |t|
      t.integer :airplane_id
      t.text :text

      t.timestamps
    end
  end
end
