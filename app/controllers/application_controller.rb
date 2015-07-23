class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :catagories
  before_filter :brands

  def catagories
  	@catagories = Catagory.all 
  end

	def brands
	    @brands = []
	    Product.all.each do |product|
	      if @brands.include?(product.brand) == false
	      	#unless @brands.include?(product.brand)
	        @brands.push(product.brand)
	      end
	    end
	    return @brands
	end

	def remote_ip
		if request.remote_ip == '127.0.0.1'
			#Hard coded remote acces
			"#{ENV['my_url']}"
		else
			request.remote_ip
		end
	end

end
