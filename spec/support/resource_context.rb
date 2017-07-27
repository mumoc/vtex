shared_context 'resources' do
  let(:client) { Vtex::Client.new({ account_name: "accountname",
                                    environment: "environment",
                                    app_key: "key",
                                    app_token: "token" }) }
  let(:connection) { client.connection }
end
