class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :couldnt_find_record
  before_action :load_tweets

  def load_tweets
    @tweets = client.user_timeline[0..3]
  end

  private
  def couldnt_find_record
    redirect_to root_url, notice: "That record doesn't exist!"
  end
end
