class StockController < ApplicationController
	def quote
	end

	def create
		@symbol = params[:stock].upcase
		number = params[:number].to_i
		@stock_quotes = []

		
		
		number.times do
			sleep 3
			quote = YahooFinance::get_quotes( YahooFinance::StandardQuote, @symbol )[@symbol].lastTrade
			@stock_quotes << quote
		end
		total = @stock_quotes.inject(&:+)
		@average = total / number
	end

end
