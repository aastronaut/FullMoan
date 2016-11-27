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

class SensorSerializer < ActiveModel::Serializer
  attributes :id, :name, :version, :power, :resolution, :maximum_range, :vendor_id, :type_id, :created_at, :updated_at

  has_many :sensor_modifications
end
