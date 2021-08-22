# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: "admin@example.jp",
  password: "123456")           #管理者側の初期データ


# 4.times do |n|
# Customer.create!([
#   email: "customer#{n+1}@customer.jp",
#   password: "coffeetalk#{n+1}",
#   first_name: "客#{n+1}",
#   last_name: "顧",
#   kana_first_name: "キャク#{n+1}",
#   kana_last_name: "コ",
#   postal_code: "#{n+1}#{n+1}#{n+1}#{n+1}#{n+1}#{n+1}#{n+1}",
#   address: "大阪府大阪市中央区",
#   phone_number: "#{n+1}#{n+1}#{n+1}#{n+1}#{n+1}#{n+1}#{n+1}#{n+1}#{n+1}#{n+1}#{n+1}"
#   ])
# end

# Genre.create!([
#     {name:"ケーキ"},
#     {name:"焼き菓子"},
#     {name:"プリン"},
#     {name:"キャンディー"}
#   ])

# Product.create!([
#   {name:"いちご", introduction:"イチゴケーキ", image_id: "", genre_id: 1, price: 500},
#   {name:"ヤキガシ", introduction:"焼き菓子", image_id: "", genre_id: 2,price: 300},
#   {name:"プリン", introduction:"濃厚プリン", image_id: "", genre_id: 3, price: 400},
#   {name:"キャンディー", introduction:"不二家のキャンディー", image_id: "", genre_id: 4, price: 200}
#   ])

# 4.times do |n|
# Order.create!(
#   customer_id: "#{n+1}",
#   carriage: 800,
#   payment_method: 0,
#   postal_code: "JapanCityTown#{n+1}-#{n+1}　#{n+1}#{n+1}#{n+1}号室",
#   address: "#{n+1}#{n+2}#{n+3}#{n+4}#{n+5}#{n+6}#{n+7}",
#   name: "TOWNCITYJAPAN",
#   status: 0,
#   total_payment: "#{n+1}#{n+2}#{n+3}#{n+4}"
#   )
# end

# 4.times do |n|
# CartItem.create!(
#   product_id: "#{n+1}",
#   customer_id: "#{n+1}",
#   amount: "#{n*2}",
#   )
# end

# OrderedProduct.create!([
#   {order_id: 1, product_id: 1, amount: 2, price => product.price},
#   {order_id: 2, product_id: 2, amount: 4, price: 330},
#   {order_id: 3, product_id: 3, amount: 6, price: 440},
#   {order_id: 4, product_id: 4, amount: 8, price: 220}
#   ])

# 4.times do |n|
# Receiver.create!(
#   customer_id: "#{n+1}",
#   postal_code: "JapanCityTown#{n+1}-#{n+1}　#{n+1}#{n+1}#{n+1}号室",
#   address: "#{n+1}#{n+2}#{n+3}#{n+4}#{n+5}#{n+6}#{n+7}",
#   name: "TOWNCITYJAPAN",
#   )
# end