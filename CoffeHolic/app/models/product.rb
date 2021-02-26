class Product < ApplicationRecord
    has_many :order_products
    has_many :orders, through: :order_prodcts
    has_many :object_category
    has_many :categories, through: :category_products
end
