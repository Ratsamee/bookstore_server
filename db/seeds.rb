# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
admin = User.create full_name: 'admin', email: 'admin@ga.co', address: 'Bankstown', shipping_address: 'Bankstown', password: 'chicken'
user1 = User.create full_name: 'mee', email: 'mee@ga.co', address: 'Kingswood', shipping_address: 'Kingswood', password: 'chicken'
puts "User was successfully create"