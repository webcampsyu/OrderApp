class Admin::OrdersController < ApplicationController
  
  def show
    @order = Order.find(params[:id])
  end 
  
  def update
    @order = Order.find(params[:id])
    @order.update
  end 
  
  
end
