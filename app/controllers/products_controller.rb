# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :set_product, only: %i[show]

  def index
    @products = Product.all.with_attached_image
  end

  def show
    @breadcrumb = @product.category
    @product
  end

  private

  def set_product
    @product = Product.with_attached_image.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end
