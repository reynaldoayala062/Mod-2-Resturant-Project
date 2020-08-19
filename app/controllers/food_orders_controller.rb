class FoodOrdersController < ApplicationController
    
    def index
        @food_orders = FoodOrder.all
    end

    def show
        @food_order = FoodOrder.find(params[:id])
    end

    def new
        @food_order = FoodOrder.new
    end 

    def create
        @food_order = FoodOrder.create(food_order_params)

        if @food_order.save
            redirect_to orders_path
        else
            render :new
        end
    end

    def destroy
        @food_order = FoodOrder.find(params[:id])
        @food_order.destroy
    end

    private

    def food_order_params
        params.require(:food_order).permit(:order_id, :food_id)
    end
    
end
