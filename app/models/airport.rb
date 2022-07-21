# == Schema Information
#
# Table name: airports
#
#  id         :bigint           not null, primary key
#  city       :string
#  code       :string
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Airport < ApplicationRecord
  has_many :arriving_flights, class_name: 'Flight', foreign_key: "arrival_airport_id"
  has_many :departing_flights, class_name: 'Flight', foreign_key: "depature_airport_id"

  def arrival_airports
    result =[]
    arr = self.departing_flights
    arr.each do |f|
      result.push(f.arrival_airport)
    end
    result
  end
end
