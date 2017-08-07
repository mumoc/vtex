require 'faraday'

module Vtex
  class Client
    VTEX_API_BASE = "http://accountName.environment.com.br"

    attr_reader :account_name, :environment, :app_key, :app_token

    def initialize(options = {})
      @account_name = options[:account_name]
      @environment  = options[:environment]
      @app_key      = options[:app_key]
      @app_token    = options[:app_token]
    end

    def connection
      @faraday ||= Faraday.new connection_options do |request|
        request.adapter :net_http
      end
    end

    def self.resources
      {
        products: ProductResource,
        category_and_brand: CategoryAndBrandResource
      }
    end

    def method_missing(name, *args, &block)
      if self.class.resources.keys.include?(name)
        resources[name] ||= self.class.resources[name].new(connection: connection)
        resources[name]
      else
        super
      end
    end

    def resources
      @resources ||= {}
    end

    private

    def vtex_api
      VTEX_API_BASE.gsub(/accountName|environment/,
                         'accountName' => account_name,
                         'environment' => environment)
    end

    def connection_options
      {
        url: vtex_api,
        headers: {
          content_type: 'application/json',
          "X-VTEX-API-AppKey" => app_key,
          "X-VTEX-API-AppToken" => app_token
        }
      }
    end
  end
end

