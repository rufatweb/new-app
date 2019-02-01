module Api
  module V1
class ItemsController < ApplicationController
  def index
    render json: Item.includes(:users), include:['users']
  end

  def create
    @item = Item.create(item_params)
    render json: @item, status: :accepted
  end
  def update
    @item.update(item_params)
    if @item.save
      render json: @item, status: :accepted
    else
      render json: { errors: @item.errors.full_messages }, status: :unprocessible_entity
    end
  end
  def destroy
    @item.destroy
    render json: { message: “removed” }, status: :ok
  end
  private

  def item_params
    params.require(:item).permit(:name, :price, :image)
  end

  def find_user
    @user = Item.find(params[:id])
  end


end
end
end
