class Order < ApplicationRecord
    has_many :order_products
    has_many :products, through: :order_products
    before_save :update_total_price
    def total_price
        order_products.collect {|i| i.valid? (i.quantity.to_i*i.unit_price.to_i)}
    end
    def update_total_price
        self[:total_price] = total_price
    end

end
