# == Schema Information
#
# Table name: order_details
#
#  id          :bigint           not null, primary key
#  order_id    :integer
#  book_id     :string
#  price       :float
#  cover_image :string
#  iscancel    :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class OrderDetail < ApplicationRecord
    validates :book_id, presence: true
    validates :price, presence: true
    belongs_to :order
end
