class Api::ProductsController < ApplicationController

  before_action do
    request.format = :json
  end

  def index
    @products = Product.all.order("name asc")
  end

  def show
    @product = Product.find_by! id: params[:id]
  end

end
