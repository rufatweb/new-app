module Api
  module V1
    class UserItemsController < ApplicationController

      before_action :authorized
      # before_action :set_expiration_date


      # def set_expiration_date
      #  self.expiration = Date.today + 14.days
      # end

      # def edit
      #    user_item = UserItem.find(params[:id])
      #    render json: user_item
      # end


   #
   def update
     user_item = UserItem.find(params[:id])
     user_item.update(quantity: user_item_params[:quantity])
     render json: user_item
   end



      def create
        user_item = UserItem.create(user_item_params)
        render json: user_item, status: :created
      end

      def index
        user_items = UserItem.all
        render json: user_items, status: :ok
      end

      def destroy
     user_item = UserItem.find(params[:id])
     user_item.destroy
     end

      private

      def user_item_params
        params.require(:user_item).permit(:user_id, :item_id, :quantity)
      end


    end
  end
end
