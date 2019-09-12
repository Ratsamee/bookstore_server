# This file should contain all the record creation needed to seed the database with its default values.

User.destroy_all
user1 = User.create full_name: 'mee', email: 'mee@ga.co', address: 'Kingswood', shipping_address: 'Kingswood', password: 'chicken'
puts "User was successfully create"

Order.destroy_all
order1 = Order.create user_id: user1.id, order_date: DateTime.now.to_date, iscancel: false, ispaid: false
puts "order successfully create" 