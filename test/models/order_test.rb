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
require "test_helper"

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
