require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Putio < OmniAuth::Strategies::OAuth2

      option :name, "putio"

      option :client_options, {
        :site => "https://api.put.io/v2/",
        :authorize_url => '/v2/oauth2/authenticate',
        :token_url     => '/v2/oauth2/access_token',
        :token_method  => :get
      }

      # Unfortunately, the Put.io v2 API exposes no kind of user information at
      # this point.
      
      uid {}

      info {}
      
    end
  end
end
