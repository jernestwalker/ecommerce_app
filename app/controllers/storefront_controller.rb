class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  	@catagories = Catagory.all
  	@brands = []
  	@products.each do |product|
  		if @brands.include?(product.brand) == false
  			@brands.push(product.brand)
  		end
  	end
  end

  def items_by_catagory
  	@catagories = Catagory.all
  	@brands = []
  	Product.all.each do |product|
  		if @brands.include?(product.brand) == false
  			@brands.push(product.brand)
  		end
  	end
  
  	@catagory = Catagory.find(params[:id])
  	@products = Product.where(catagory_id: params[:id])
	end

  def items_by_brand
 	  @catagories = Catagory.all
   	@brands = []
  	Product.all.each do |product|
  		if @brands.include?(product.brand) == false
  			@brands.push(product.brand)
  		end
  	end

  	@brand = params[:brand]
  	@products = Product.where(brand: @brand)
	end

end
