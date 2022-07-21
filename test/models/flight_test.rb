# == Schema Information
#
# Table name: flights
#
#  id             :bigint           not null, primary key
#  date           :date             not null
#  duration       :integer          not null
#  flight_number  :integer          default(-1), not null
#  time           :time             not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  destination_id :bigint           not null
#  origin_id      :bigint           not null
#
# Indexes
#
#  index_flights_on_destination_id  (destination_id)
#  index_flights_on_origin_id       (origin_id)
#
# Foreign Keys
#
#  fk_rails_...  (destination_id => airports.id)
#  fk_rails_...  (origin_id => airports.id)
#
require "test_helper"

class FlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
