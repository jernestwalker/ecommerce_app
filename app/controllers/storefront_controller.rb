class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by_catagory
  	@catagory = Catagory.find(params[:id])
  	@products = Product.where(catagory_id: params[:id])
	end

  def items_by_brand
  	@brand = params[:brand]
  	@products = Product.where(brand: @brand)
	end

end
