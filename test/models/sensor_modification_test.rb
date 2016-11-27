# == Schema Information
#
# Table name: sensor_modifications
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  sensor_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SensorModificationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
