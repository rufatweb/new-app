module Api
  module V1
class UsersController < ApplicationController
  def index
        render json: User.includes(:items), include:['items']
       end
     end
   end
end
