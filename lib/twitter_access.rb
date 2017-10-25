#controller to read .yml
# index method of pages controller open .yml file

class OrgTweets
  # organizations = ["TeamRubicon", "TeamRWB"]
  # tweets = []

  def self.get(org_handle)
    all_tweets = []
    @client ||= self.setup_client
    org_handle.each do |org_handle|
      all_tweets << @client.user_timeline(org_handle, count: 3)
    end
    File.write('tweets.yml', YAML.dump(all_tweets))
  end

  def self.setup_client
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Secret.get('TWITTER_CONSUMER_KEY')
      config.consumer_secret     = Secret.get('TWITTER_CONSUMER_SECRET')
      config.access_token        = Secret.get('TWITTER_ACCESS_TOKEN')
      config.access_token_secret = Secret.get('TWITTER_ACCESS_SECRET')
    end
  end
end
