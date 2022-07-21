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
class Flight < ApplicationRecord
  def self.reset_all_flight_numbers!
    self.all.each { |flight| flight.reset_flight_number! }
  end

  attr_accessor :tickets

  belongs_to :origin, class_name: :Airport
  belongs_to :destination, class_name: :Airport
  has_many :bookings
  has_many :passengers, through: :bookings

  def formatted_date
    date.strftime("%m/%d/%Y")
  end

  def formatted_time
    time.strftime('%l:%M%P')
  end

  def boarding_time
    (time - 1800).strftime('%l:%M%P')
  end

  def formatted_duration
    "%dh %02dm" % duration.divmod(60)
  end

  def formatted_flight_number
    reset_flight_number! unless flight_number

    "OA#{flight_number}"
  end

  def reset_flight_number!
    update(flight_number: rank)
  end

  private

  def rank
    self.class.where('date = ? AND time < ?', date, time).count + 1
  end
end
