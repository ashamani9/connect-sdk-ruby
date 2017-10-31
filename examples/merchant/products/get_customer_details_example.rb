#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/key_value_pair'
require 'ingenico/connect/sdk/domain/product/get_customer_details_request'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Product = Ingenico::Connect::SDK::Domain::Product

def example
  get_client do |client|
    values = []

    value1 = Definitions::KeyValuePair.new
    value1.key = 'fiscalNumber'
    value1.value = '01234567890'

    values << value1

    body = Product::GetCustomerDetailsRequest.new
    body.country_code = 'SE'
    body.values = values

    response = client.merchant('merchantId').products().customer_details(1, body)
  end
end

def get_client
  api_key_id = ENV.fetch('connect.api.apiKeyId', 'someKey')
  secret_api_key = ENV.fetch('connect.api.secretApiKey', 'someSecret')
  configuration_file_name = File.join(__FILE__, '..', '..', 'example_configuration.yml')
  yield client = Ingenico::Connect::SDK::Factory.create_client_from_file(configuration_file_name, api_key_id, secret_api_key)
ensure
  # Free networking resources when done
  client.close unless client.nil?
end
