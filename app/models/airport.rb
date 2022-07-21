# == Schema Information
#
# Table name: airports
#
#  id         :bigint           not null, primary key
#  city       :string
#  code       :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_airports_on_code  (code) UNIQUE
#
class Airport < ApplicationRecord
  has_many :departing_flights,
    class_name: :Flight,
    foreign_key: :origin_id,
    dependent: :destroy

  has_many :arriving_flights,
    class_name: :Flight,
    foreign_key: :destination_id,
    dependent: :destroy
end
