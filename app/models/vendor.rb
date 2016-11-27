# == Schema Information
#
# Table name: vendors
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vendor < ApplicationRecord
  has_many :sensors
end
