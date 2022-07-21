# == Schema Information
#
# Table name: passengers
#
#  id         :bigint           not null, primary key
#  email      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Passenger < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { minimum: 2 }

  validates :email, presence: true

  has_and_belongs_to_many :bookings
  has_many :flights, through: :bookings
end
