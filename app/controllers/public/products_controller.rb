class Public::ProductsController < ApplicationController
  before_action :authenticate_customer!, except: [:index]
end
