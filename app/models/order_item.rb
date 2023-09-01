class OrderItem < ApplicationRecord
  belongs_to :customer_id
  belongs_to :product_id
end
