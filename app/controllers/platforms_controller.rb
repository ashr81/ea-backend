class PlatformsController < ApplicationController
  def index
    product_id = params[:product_id]
    return render json: {error: "Please select product"} unless product_id
    platforms = Platform.joins(:product_platforms).where(product_platforms: { product_id: product_id})
    return render json: {error: 'Selected product doesn\'t support any platforms'} if platforms.empty?
    render json: platforms
  end
end
