#controller to read .yml
# index method of pages controller open .yml file

# 
# class Org_tweets
#
# organizations = ["TeamRubicon", "TeamRWB"]
# tweets = []
#
#   def self.get
#     client = Twitter::REST::Client.new do |config|
#     config.consumer_key        = Secret.get(‘TWITTER_CONSUMER_KEY’)
#     config.consumer_secret     = Secret.get(‘TWITTER_CONSUMER_SECRET’)
#     config.access_token        = Secret.get(‘TWITTER_ACCESS_TOKEN’)
#     config.access_token_secret = Secret.get(‘TWITTER_ACCESS_SECRET’)
#     end
#   end
#
#   organizations.each do |grab_tweets|
#   tweets = client.user_timeline(grab_tweets, count: 1)
#   tweets.each { |tweet| puts tweet.full_text }
#   end
#
#
# end
