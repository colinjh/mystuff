class PurchasesController < ApplicationController
  def index
  end

  def show
  end

  def search
   @results = Product.tagged_with([params[:query]], :any => true)
  end

end
