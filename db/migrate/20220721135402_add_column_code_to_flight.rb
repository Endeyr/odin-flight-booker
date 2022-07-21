class AddColumnCodeToFlight < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :flight_code, :string
  end
end
