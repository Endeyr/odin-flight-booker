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
class Booking < ApplicationRecord
  belongs_to :flight
  has_and_belongs_to_many :passengers
  accepts_nested_attributes_for :passengers
end
