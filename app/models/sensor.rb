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

class Sensor < ApplicationRecord
  belongs_to :vendor
  belongs_to :type
  has_many :users, through: :sensor_modifications
end
