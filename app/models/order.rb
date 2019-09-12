# == Schema Information
#
# Table name: orders
#
#  id         :bigint           not null, primary key
#  user_id    :integer
#  order_date :date
#  iscancel   :boolean          default(FALSE)
#  ispaid     :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
    validates :order_date, presence: true
    validates :user_id, presence: true
    belongs_to :user
    has_many :orderdetails
end
