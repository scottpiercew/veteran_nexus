#controller to read .yml
# index method of pages controller open .yml file


class OrgTweets

  organizations_twitter_handle = ["TeamRubicon", "TeamRWB"]
  tweets = []
  all_tweets = []

  attr_accessor :organizations_twitter_handle, :all_tweets

    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Secret.get(‘TWITTER_CONSUMER_KEY’)
      config.consumer_secret     = Secret.get(‘TWITTER_CONSUMER_SECRET’)
      config.access_token        = Secret.get(‘TWITTER_ACCESS_TOKEN’)
      config.access_token_secret = Secret.get(‘TWITTER_ACCESS_SECRET’)
    end

    organizations_twitter_handle.each do |grab_tweets|
      tweets = client.user_timeline(grab_tweets, count: 3)
      all_tweets << tweets
    end

    File.write("tweets.yml", YAML.dump(all_tweets))
  end
end
