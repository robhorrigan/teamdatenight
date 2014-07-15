class Restaurant < ActiveRecord::Base
  belongs_to :movie
  
  def self.findings(theater_address)
    gsub_theater_address = theater_address.gsub(',','').gsub(' ','+')

  def self.findings(theater_address)
    gsub_theater_address = theater_address.gsub(' ','+')

    consumer_key = 'eTea0o4ChaOIb63F-te7Gg'
    consumer_secret = 'eJgmD0A9xzA40JLP3WeZ_cxhAHQ'
    token = 'BK68HjB4vIhIep_RYng-Drf9adE6FhvY'
    token_secret = '2Fa0SGivQYnjgd7S3YtMelWwjUw'

    api_host = 'api.yelp.com'

    consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
    access_token = OAuth::AccessToken.new(consumer, token, token_secret)

    path = "/v2/search?term=restaurants&location=#{gsub_theater_address}&limit=20"

    JSON.parse(access_token.get(path).body)
  end
end
