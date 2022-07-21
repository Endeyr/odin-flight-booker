class AddForeiginKeysToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :confirmation, :string, null: false
    add_index :bookings, :confirmation, unique: true
  end
end
