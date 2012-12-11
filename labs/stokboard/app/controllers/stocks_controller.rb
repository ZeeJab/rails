class StocksController < ApplicationController
  def quote
  end

  def yahoo
    @symbol = params[:symbol].upcase
    count = params[:count].to_i
    @quotes = count.times.map{YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade}
    @avg = @quotes.inject(&:+) / count
    @quotes.each{|q| Stock.create(:symbol => @symbol, :quote => q)}
  end

  def total
    stocks = Stock.select(:symbol).uniq
    # brings you an array of partial stock objects symbols, no repeats
    # [#<Stock symbol: "AAPL">, #<Stock symbol: "MSFT">, #<Stock symbol: "GOOG">]
    symbols = stocks.map{|stock| stock.symbol}
    # creates an array just the symbol name
    # ["AAPL", "MSFT", "GOOG"]
    @output = {}
    symbols.each do |symbol|
      @output[symbol] = Stock.where(:symbol => symbol)
      # puts into the hash with the symbol as the key, the value is an array of stock objects
    end
  end

end