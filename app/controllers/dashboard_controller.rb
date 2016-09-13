class DashboardController < ApplicationController
  def show
    @product_count = Product.count
  end
end
