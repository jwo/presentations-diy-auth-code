json.products @products do |product|
  json.id product.id
  json.name product.name
  json.description product.description
  json.url api_product_url(product)
  json.price_in_cents product.price_in_cents
end
