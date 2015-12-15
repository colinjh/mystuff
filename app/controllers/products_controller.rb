class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  

  def show
    @product = Product.find params[:id]
  end

  def edit
    @product = Product.find params[:id]
  end

  def new
    @product = Product.new
  end

  def update
    product = Product.find params[:id]
    product.update product_params
    redirect_to product
  end



  def create
    product_details = product_params


    req = Cloudinary::Uploader.upload params[:file]
    product_details[:image] = req["url"]

    product = Product.new product_details

    product.tag_list = params[:product][:tags]
    product.save
    product.reload

    @current_user.products << product
    

    
    redirect_to product
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end

end
