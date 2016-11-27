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

class SensorModification < ApplicationRecord
  belongs_to :user
  belongs_to :sensor
end
