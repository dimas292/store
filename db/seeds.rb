# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
products = [
  {
    name: "Kaos Polo Dry Pique Lengan Pendek",
    size_start: "XS",
    size_end: "3XL",
    category: "Wanita",
    price: 299000,
    discount: 100000,
    rating: 4.8
  },
  {
    name: "Kemeja Flanel Kotak Lengan Panjang",
    size_start: "S",
    size_end: "XXL",
    category: "Wanita",
    price: 399000,
    discount: 0,
    rating: 4.5
  },
  {
    name: "AIRism Katun Kaos Oblong Oversize",
    size_start: "XS",
    size_end: "4XL",
    category: "Pria",
    price: 199000,
    discount: 50000,
    rating: 4.9
  },
  {
    name: "Jaket Parka Saku Portable",
    size_start: "S",
    size_end: "XL",
    category: "Wanita",
    price: 499000,
    discount: 0,
    rating: 4.7
  },
  {
    name: "Celana Chino Slim Fit",
    size_start: "27",
    size_end: "40",
    category: "Pria",
    price: 599000,
    discount: 100000,
    rating: 4.6
  },
  {
    name: "Kardigan Proteksi Sinar UV",
    size_start: "S",
    size_end: "3XL",
    category: "Pria",
    price: 299000,
    discount: 0,
    rating: 4.4
  }
]

products.each do |product_data|
      Product.create!(product_data)
end

puts "seed #{Product.count} berhasil ditambahkan "
