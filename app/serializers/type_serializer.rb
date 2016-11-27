# == Schema Information
#
# Table name: types
#
#  id          :integer          not null, primary key
#  type_number :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TypeSerializer < ActiveModel::Serializer
  attributes :id, :type_number, :created_at, :updated_at
end
