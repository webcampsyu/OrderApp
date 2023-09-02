class Product < ApplicationRecord
  
  has_one_attached :image
  belongs_to :genre_id
  validates :image, presence: true
  validates :name, presence: true
  validates :explanation, presence: true
  validates :price, presence: true
  validates :size, presence: true
  
  def add_tax_price
    (self.price * 1.10).round
  end 
  
end
