class ProductsController < ApplicationController
  def index

    products = Product.all
    products_disliked = []

    @product_zero = products[0]
    @product_one = products[1]
    @product_two = products[2]
    @product_three = products[3]
    @product_four = products[4]
    @product_five = products[5]
    @product_six = products[6]
    @product_seven = products[7]
    @product_eight = products[8]
    @product_nine = products[9]

=begin
    products.each do |product|
      if products.include?(product) && !products_disliked.include?(product)
        @product_left = product
        break
      end
    end




    products.each do |product|
      if product != nil && @product_left != product
        @product_right = product
        break
      end
    end
=end

  end

  def show
    @product = Product.find(params[:id])
  end

  def select
    products = Product.all
    # get the first two elements from the array
    # if clicked on one product, the other one will be deleted from the array
    # get the next product from the array and compare it to the  product that was clicked on

    # count the clicks
    # after 10 clicks, show the product
    # decide whether to buy or to keep selecting
  end

  def article_params
    params.require(:product).permit(:name, :link, :colour, :photo, :price, :brand, :product_type)
  end
end
