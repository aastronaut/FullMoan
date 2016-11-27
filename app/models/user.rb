# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  api_key    :string
#  secret     :string
#  github_id  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#

class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
end
