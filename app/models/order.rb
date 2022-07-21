# == Schema Information
#
# Table name: orders
#
#  id         :bigint           not null, primary key
#  paid       :boolean          default(FALSE)
#  price      :float
#  token      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Order < ApplicationRecord
end
