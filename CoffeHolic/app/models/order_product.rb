class OrderProduct < ApplicationRecord
    belongs_to :product 
    belongs_to :order 
    before_save :unit_price
    validates :quantity, presence: true,  numericality: { only_integer: true, greater_than: 0 }
    validates :unit_price, presence: true, numericality: { only_integer: true, greater_than: 0}
    def unit_price
        self[:unit_price] = product.price
    end
    
end
