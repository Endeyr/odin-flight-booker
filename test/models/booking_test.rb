# == Schema Information
#
# Table name: bookings
#
#  id           :bigint           not null, primary key
#  date         :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  flight_id    :integer
#  passenger_id :integer
#
require "test_helper"

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
