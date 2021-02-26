class OrderProductsController < ApplicationController
    def create
        @order = current_order
        a = params[:order_product][:product_id]
        if @order.order_products.find_by(product_id: a).blank?
          @order_product = @order.order_products.new(order_product_params)
          @order.save
          session[:order_id] = @order.id
          flash[:success] = "Added to your cart"
          redirect_to :controller => 'product', :action => 'index'
        else
          update
          redirect_to :controller => 'product', :action => 'index'
        end

        
    end
    def update
        @order = current_order
        @order_product = @order.order_products
        debugger
        @order_product.update(attributes: order_product_params)
    end
    def destroy
        @order = current_order
        @order_product = @order.order_products.find(params[:id])
        @order_product.destroy
        @order_product = @order.order_products
      end
    private
      def order_product_params
        params.require(:order_product).permit(:quantity, :product_id)
      end
end
