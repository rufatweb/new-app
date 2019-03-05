require 'pry'

module Api
  module V1
class ChargesController < ApplicationController

skip_before_action :authorized

  def new

  end

  def create

    # Amount in cents
    @amount = params['amount']

    @customer = Stripe::Customer.create(
      :email => params['email'],
      :source  => params['token']
    )

    @charge = Stripe::Charge.create(
      :customer    => @customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )



  rescue Stripe::CardError => e
    # Since it's a decline, Stripe::CardError will be caught
    body = e.json_body
    err  = body[:error]

    puts "Status is: #{e.http_status}"
    puts "Type is: #{err[:type]}"
    puts "Charge ID is: #{err[:charge]}"
    # The following fields are optional
    puts "Code is: #{err[:code]}" if err[:code]
    puts "Decline code is: #{err[:decline_code]}" if err[:decline_code]
    puts "Param is: #{err[:param]}" if err[:param]
    puts "Message is: #{err[:message]}" if err[:message]
  rescue Stripe::RateLimitError => e
    # Too many requests made to the API too quickly
  rescue Stripe::InvalidRequestError => e
    # Invalid parameters were supplied to Stripe's API
  rescue Stripe::AuthenticationError => e
    # Authentication with Stripe's API failed
    # (maybe you changed API keys recently)
  rescue Stripe::APIConnectionError => e
    # Network communication with Stripe failed
  rescue Stripe::StripeError => e
    # Display a very generic error to the user, and maybe send
    # yourself an email
  rescue => e
    # Something else happened, completely unrelated to Stripe
  end


end
end
end
