# == Schema Information
#
# Table name: vendors
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at
end
