class OrdersController < ApplicationController

    def index
        @orders = Order.all
    end

    def show
        @order = Order.find(params[:id])
    end

    def new 
        @order = Order.new
    end 

    def create
        @order = Order.create(order_params)

        if @order.save
            redirect_to new_food_order_path
        else
            render :new
        end

    end 

    def edit 
    end 

    def update
    end

    def destroy
        @order = Order.find(params[:id])
        @order.destroy
        redirect_to orders_path
    end

    private

    def order_params
        params.require(:order).permit(:order_number, :user_id)
    end

end
