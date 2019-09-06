class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.date :order_date
      t.boolean :iscancel, :default => false
      t.boolean :ispaid, :default => false

      t.timestamps
    end
  end
end
