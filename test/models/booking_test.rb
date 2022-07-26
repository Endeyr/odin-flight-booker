# == Schema Information
#
# Table name: bookings
#
#  id           :bigint           not null, primary key
#  confirmation :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  flight_id    :bigint           not null
#
# Indexes
#
#  index_bookings_on_confirmation  (confirmation) UNIQUE
#  index_bookings_on_flight_id     (flight_id)
#
# Foreign Keys
#
#  fk_rails_...  (flight_id => flights.id)
#
require "test_helper"

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
