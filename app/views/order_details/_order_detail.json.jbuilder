json.extract! order_detail, :id, :order_id, :book_id, :price, :cover_image, :iscancel, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
