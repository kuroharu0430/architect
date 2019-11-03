# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'merryjun@msn.com', password: 'hanage0614', password_confirmation: 'hanage0614')
AdminUser.create!(email: 'kuroharu0430@gmail.com', password: 'sazanka3033', password_confirmation: 'sazanka3033')

Customer.create!(name:'奥野 潤',  email: 'merryjun@msn.com', password: 'hanage0614', password_confirmation: 'hanage0614')
Customer.create!(name:'kuroharu',email: 'kuroharu0430@gmail.com', password: 'sazanka3033', password_confirmation: 'sazanka3033')
Customer.create!(name:'test user',email: 'test@gmail.com', password: '123456', password_confirmation: '123456')
