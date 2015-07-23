require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Ruffnote < OmniAuth::Strategies::OAuth2
      option :client_options, {
        site: 'https://ruffnote.com',
        authorize_url: '/oauth/authorize',
        token_url: '/oauth/token',
      }
      option :provider_ignores_state, true

      uid { raw_info['id'].to_s }

      info do
        {
          email: raw_info['email'],
          name: raw_info['username'],
          nickname: raw_info['username'],
          description: raw_info['description'],
          image: raw_info['avatar_url'],
          urls: {
            website: raw_info['url'],
          }
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        access_token.options[:mode] = :query
        @raw_info ||= access_token.get('api/v1/me.json').parsed
      end
    end
  end
end

OmniAuth.config.add_camelization 'ruffnote', 'Ruffnote'

