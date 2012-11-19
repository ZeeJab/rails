class StockController < ApplicationController
	def index
	end

	def stocks
		@symbol = params[:stock].upcase
	    @number = params[:number].to_i
	    @quotes = []

	    @number.times do
	      quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
	      @quotes << quote
	      sleep 1
    	end

    #@quotes = count.times.map{slepp 5; YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock)[@stock].lastTrade}
    #learn how to use this map 

    

    @lowest = @quotes.min
    @highest = @quotes.max
    @total = @quotes.inject(:+)
    @len = @quotes.length
    @average = (@total / @len).round(2)

    @quotes.each{|q| Stock.create(:symbol => )}

	end

	def dashboard
	end
end
