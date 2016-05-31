class PagesController < ApplicationController
  def index
      @craftsmen = Craftsman.all
      @products = Product.all

  end

  def contact
  end

  def us
  end
end
