class Admin::CustomersController < ApplicationController
  
  def index
    @customer = Customer.all
  end 
  
  def show
    @customer = Customer.find(params[:id])
  end 
  
  def edit
    @customer = Customer.find(params[:id])
  end 
  
  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash [:notice] = "お客様情報を更新しました"
      redirect_to request.referer
    else 
      render "edit"
    end 
  end 
  
  private
  def customer_params
    params.require(:customer).permit(:name, :email)
end
