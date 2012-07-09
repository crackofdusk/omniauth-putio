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

      # The user name is the display name ("how people will see you when you
      # share stuff") and can be modified.
      # I think it's more likely to change than the email address.
      
      uid { raw_info['mail'] }

      info do
        {
          :name  => raw_info['username'],
          :email => raw_info['mail']
        }
      end


      extra do
        {
          :raw_info => raw_info
        }
      end

      def raw_info
        access_token.options[:mode] = :query
        access_token.options[:param_name] = 'oauth_token'

        @raw_info ||= access_token.get('/v2/account/info').parsed['info']
      end
      
    end
  end
end
