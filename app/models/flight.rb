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
class Flight < ApplicationRecord
  belongs_to :depature_airport, class_name: "Airport", foreign_key: "depature_airport_id"
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_airport_id"
  has_many :bookings
  has_many :passengers, through: :bookings
end
