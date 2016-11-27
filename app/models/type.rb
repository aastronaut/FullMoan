# == Schema Information
#
# Table name: types
#
#  id          :integer          not null, primary key
#  type_number :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Type < ApplicationRecord
  has_many :sensors
end
