require "spec_helper"

RSpec.describe Vtex::Client do
  subject(:client) do
    Vtex::Client.new({ account_name: "demo",
                       environment: "test",
                       app_key: "key",
                       app_token: "token" })
  end

  describe "#initialize" do
    it "initializes with an account_name" do
      expect(client.account_name).to eq("demo")
    end

    it "initializes with an environment" do
      expect(client.environment).to eq("test")
    end

    it "initializes with an app_key" do
      expect(client.app_key).to eq("key")
    end

    it "initializes with an app_token" do
      expect(client.app_token).to eq("token")
    end
  end

  describe "#method_missing" do
    context "called with an existing method" do
      xit do
        expect{ client.products }.to_not raise_error
      end
    end

    context "called with a missing method" do
      specify do
        expect{ client.this_is_wrong }.to raise_error(NoMethodError)
      end
    end
  end

  describe "#connection" do
    module AcmeApp
      class CustomLogger < Faraday::Middleware
      end
    end

    it "populates the Vtex API AppKey header correctly" do
      expect(client.connection.headers["X-VTEX-API-AppKey"]).to eq("key")
    end

    it "populates the Vtex API AppToken header correctly" do
      expect(client.connection.headers["X-VTEX-API-AppToken"]).to eq("token")
    end

    it "sets the content type" do
      expect(client.connection.headers["Content-Type"]).to eq("application/json")
    end

    it "sets the connection url correctly" do
      expect(client.connection.url_prefix.to_s).to eq("http://demo.test.com.br/api/catalog_system/")
    end

    it "allows access to faraday instance" do
      client.connection.use AcmeApp::CustomLogger
      expect(client.connection.builder.handlers).to include(AcmeApp::CustomLogger)
    end
  end
end

