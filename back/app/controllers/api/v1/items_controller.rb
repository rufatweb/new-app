module Api
  module V1
    class ItemsController < ApplicationController


   skip_before_action :authorized

      def index
        render json: Item.includes(:users), include: ['users']
      end

    end
  end
end
