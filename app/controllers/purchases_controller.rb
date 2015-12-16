class PurchasesController < ApplicationController
  def index
    if @current_user
      @watched_purchases = @current_user.purchases
    end
  end

  def new
  end

  def create
    purchase = Purchase.create( :user_id => @current_user.id, :product_id => params[:product_id] )
    render :json => { status: "OK" }
  end

  def show
  end

  def search
   @results = Product.tagged_with([params[:query]], :any => true)
  end

end
