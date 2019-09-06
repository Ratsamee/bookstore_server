# == Schema Information
#
# Table name: users
#
#  id               :bigint           not null, primary key
#  email            :string
#  password_digest  :string
#  full_name        :string
#  address          :text
#  shipping_address :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: { case_sensitive: false }
    validates :full_name, presence: true
    validates :shipping_address, presence: true
    has_many :orders
    has_many :orderdetails, through: :orders
end
