class OrdersController < ApplicationController
    before_action :find_order, only: [:show, :edit, :update, :destroy]

    def index 
        @orders = Order.all
    end

    def show 
        
    end

    def new 
        @order = Order.new
    end

    def create 
        @order = Order.create(order_params)
		if @order.valid?
			flash[:success] = "Thank you for your business! An order confirmation will be sent to your email."
		redirect_to order_path(@order)
		else
			flash[:errors] = @order.errors.full_messages
			redirect_to new_order_path			
		end
    end

    def edit 

    end

    def update 
        if @order.update(order_params)
            redirect_to order_path(@order)
        else
            flash[:errors] = @order.errors.full_messages
            redirect_to edit_order_path(@order)
        end
    end

    def destroy 
		@order.destroy
		redirect_to orders_path
    end

    private

	def order_params
		params.require(:order).permit(:customer_id, :wine_id, :cupcake_id, :date, :time, :tip)
	end

	def find_order
		@order = Order.find(params[:id])
	end
end
