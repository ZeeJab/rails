class StripeController < ApplicationController
	def new
	end

	def create
		#"amount"=>"500", "token"=>"tok_0oqsoIdu9p7pOd"
		amount = params[:amount].to_f * 100; 
		#stripe works with cents so you have to times by 100 to change it
		token = params[:token]

		begin
			@stripe = Stripe::Charge.create(
				:amount => amount,
				:card => token,
				:description => 'Rails Stripe customer',
				:currency => 'usd'
				)
		rescue => e 
			@error = e.message
		end
	end

end
