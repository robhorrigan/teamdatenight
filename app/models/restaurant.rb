class Restaurant < ActiveRecord::Base
  belongs_to :movie

  def self.findings(theater_address)
    gsub_theater_address = theater_address.gsub(' ','+')

    consumer_key = ENV["YELP_CONSUMER_KEY"]
    consumer_secret = ENV["YELP_CONSUMER_SECRET"]
    token = ENV["YELP_TOKEN"]
    token_secret = ENV["YELP_TOKEN_SECRET"]

    api_host = 'api.yelp.com'

    consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
    access_token = OAuth::AccessToken.new(consumer, token, token_secret)

    path = "/v2/search?term=restaurants&location=#{gsub_theater_address}&limit=20"

    JSON.parse(access_token.get(path).body)
  end
end
