class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def twitter_api
  	client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.secrets.twitter_api_key
      config.consumer_secret     = Rails.application.secrets.twitter_api_secret
      config.access_token        = @identity.accesstoken
      config.access_token_secret = @identity.accesssecret
  	end
  end

  def twitter_stream
    TweetStream.configure do |config|
      config.consumer_key        = Rails.application.secrets.twitter_api_key
      config.consumer_secret     = Rails.application.secrets.twitter_api_secret
      config.oauth_token         = "2284092768-nszrfU9feD4OUBIlplFlQXSm1VQduS7D8XQkPpu"
      config.oauth_token_secret  = "LP2mMgtjtR6MuPoyyyiCQAZxx0us426seZA26H165hM64"
      config.auth_method         = :oauth
    end
  end

end
