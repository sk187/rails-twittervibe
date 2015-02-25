class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def twitter_client
  	client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.secrets.twitter_api_key
      config.consumer_secret     = Rails.application.secrets.twitter_api_secret
      config.access_token        = "2284092768-nszrfU9feD4OUBIlplFlQXSm1VQduS7D8XQkPpu"
      config.access_token_secret = "LP2mMgtjtR6MuPoyyyiCQAZxx0us426seZA26H165hM64"
  	end
  end

end
