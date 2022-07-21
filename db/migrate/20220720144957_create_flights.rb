class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.date :date
      t.string :duration
      t.string :time
      t.float :price
      t.integer :depature_airport_id
      t.integer :arrival_airport_id

      t.timestamps
    end
  end
end
