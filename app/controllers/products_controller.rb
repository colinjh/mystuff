class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
  end

  def edit
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new product_params

    product.tag_list = params[:product][:tags]
    product.save
    product.reload

    @current_user.products << product
    redirect_to product
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end

end
