require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = Secret.get(‘TWITTER_CONSUMER_KEY’)
  config.consumer_secret     = Secret.get(‘TWITTER_CONSUMER_SECRET’)
  config.access_token        = Secret.get(‘TWITTER_ACCESS_TOKEN’)
  config.access_token_secret = Secret.get(‘TWITTER_ACCESS_SECRET’)
end
