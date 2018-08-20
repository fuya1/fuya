json.extract! market, :id, :name, :address, :open, :parking, :tel, :closed, :locate1, :locate2, :locate3, :image :created_at, :updated_at
json.url market_url(market, format: :json)
