json.extract! trade, :id, :tax, :ticker, :long_short, :volume, :price_in, :price_out, :created_at, :updated_at
json.url trade_url(trade, format: :json)
