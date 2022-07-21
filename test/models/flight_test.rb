# == Schema Information
#
# Table name: flights
#
#  id                  :bigint           not null, primary key
#  date                :date
#  duration            :string
#  flight_code         :string
#  price               :float
#  time                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  arrival_airport_id  :integer
#  depature_airport_id :integer
#
require "test_helper"

class FlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
