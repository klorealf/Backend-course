require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV["twitter_key"], ENV["twitter_secret"]
  provider :spotify, ENV["spotify_client_id"], ENV["spotify_client_secret"]
end
