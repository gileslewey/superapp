
class OrdersController < ApplicationController

  def index

  end

  def show
      @orders = Order.includes(:product).all
  end

  def new
  end

  def create
  end

  def destroy
  end

end
