# == Schema Information
#
# Table name: sensors
#
#  id            :integer          not null, primary key
#  name          :string
#  version       :decimal(, )
#  power         :decimal(, )
#  resolution    :decimal(, )
#  maximum_range :decimal(, )
#  vendor_id     :integer
#  type_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class SensorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
