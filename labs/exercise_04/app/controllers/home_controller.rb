class HomeController < ApplicationController
	def stock
	end

	def create
		symbols = params[:stock].upcase.split(', ')
		@stocks = symbols.map{|symbol| YahooFinance::get_quotes( YahooFinance::StandardQuote, stock )}

	end

end
