class Product < ApplicationRecord
  belongs_to :user
  validates :product_name, :manufacturer, :quantity, :price, presence: true
  validates :quantity, :price, comparison: { greater_than_or_equal_to: 0 }
end
