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

class SensorModificationSerializer < ActiveModel::Serializer
  attributes :id

  has_one :sensor
  has_one :user
end
