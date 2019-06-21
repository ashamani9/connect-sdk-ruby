#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/bank_account_bban'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban] bank_account_bban
      class TokenNonSepaDirectDebitPaymentProduct730SpecificData < Ingenico::Connect::SDK::DataObject

        attr_accessor :bank_account_bban

        # @return (Hash)
        def to_h
          hash = super
          hash['bankAccountBban'] = @bank_account_bban.to_h unless @bank_account_bban.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'bankAccountBban'
            raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountBban']] unless hash['bankAccountBban'].is_a? Hash
            @bank_account_bban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban.new_from_hash(hash['bankAccountBban'])
          end
        end
      end
    end
  end
end
