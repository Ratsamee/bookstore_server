class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.string :book_id
      t.float :price
      t.string :cover_image
      t.boolean :iscancel, :default => false

      t.timestamps
    end
  end
end
