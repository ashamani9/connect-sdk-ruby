#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/token/abstract_token'
require 'ingenico/connect/sdk/domain/token/customer_token'
require 'ingenico/connect/sdk/domain/token/token_card_data'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # @attr [Ingenico::Connect::SDK::Domain::Token::CustomerToken] customer
      # @attr [Ingenico::Connect::SDK::Domain::Token::TokenCardData] data
      class TokenCard < Ingenico::Connect::SDK::Domain::Token::AbstractToken

        attr_accessor :customer

        attr_accessor :data

        # @return (Hash)
        def to_h
          hash = super
          hash['customer'] = @customer.to_h unless @customer.nil?
          hash['data'] = @data.to_h unless @data.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'customer'
            raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
            @customer = Ingenico::Connect::SDK::Domain::Token::CustomerToken.new_from_hash(hash['customer'])
          end
          if hash.has_key? 'data'
            raise TypeError, "value '%s' is not a Hash" % [hash['data']] unless hash['data'].is_a? Hash
            @data = Ingenico::Connect::SDK::Domain::Token::TokenCardData.new_from_hash(hash['data'])
          end
        end
      end
    end
  end
end
