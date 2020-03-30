class PagesController < ApplicationController
  def home
    products = Product.all
    @product_first = products[0]
    @product_second = products[1]
    @product_third = products[2]
    @product_fourth = products[3]
  end

  def about
  end

  def contact
  end
end
