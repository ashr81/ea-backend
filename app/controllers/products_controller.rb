class ProductsController < ApplicationController
  def index
    query = params[:query]
    products = []
    if query
      products = Product.where("name LIKE :search", search: "%#{query}%").limit(10)
    else
      products = Product.limit(10)
    end
    render json: products
  end
end
