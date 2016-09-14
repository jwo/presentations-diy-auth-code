User.delete_all
Product.delete_all

500.times do
  @product = Product.new
  @product.name = Faker::Commerce.product_name
  @product.price_in_cents = Faker::Commerce.price * 100
  @product.description = Faker::Hipster.paragraph(2, true)
  @product.save
end

User.create username: "joebobfrank", password: "12345678"
