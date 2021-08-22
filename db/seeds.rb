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


Customer.create(
  email: "customer@customer.jp",
  password: "coffeetalk",
  first_name: "洋平",
  last_name: "金子",
  kana_first_name: "ヨウヘイ",
  kana_last_name: "カネコ",
  postal_code: "123-4567",
  address: "大阪府大阪市中央区",
  phone_number: "0120-1234-5678"
  )

# Genre.create!(
#   name:"和菓子"
#   )

# Products.crate!(
#   name:"団子",
#   introduction:"甘いみたらし団子",
#   genre_id: 1,
#   price: 500
#   )

# OrderedProduct.create!(
#   product_id: 1,
#   amount: 1,

#   )