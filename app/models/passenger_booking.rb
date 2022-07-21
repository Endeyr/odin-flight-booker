# == Schema Information
#
# Table name: passenger_bookings
#
#  booking_id   :bigint           not null
#  passenger_id :bigint           not null
#
# Indexes
#
#  index_passenger_bookings_on_booking_id    (booking_id)
#  index_passenger_bookings_on_passenger_id  (passenger_id)
#
# Foreign Keys
#
#  fk_rails_...  (booking_id => bookings.id)
#  fk_rails_...  (passenger_id => passengers.id)
#
class PassengerBooking < ApplicationRecord
  belongs_to :passenger
  belongs_to :booking
end
