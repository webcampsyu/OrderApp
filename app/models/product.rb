class Product < ApplicationRecord
  
  has_one_attached :image
  belongs_to :genre
  has_many :order_details, dependent: :destroy
  has_many :product_items, dependent: :destroy
  
  validates :image, presence: true
  validates :name, presence: true
  validates :explanation, presence: true
  validates :price, presence: true
  validates :size, presence: true
  
  def add_tax_price
    (self.price * 1.10).round
  end 
  
end
