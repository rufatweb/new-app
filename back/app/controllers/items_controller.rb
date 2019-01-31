module Api
  module V1
class ItemsController < ApplicationController
  def index
    render json: Item.includes(:users), include:['users']
  end
end
end
end
