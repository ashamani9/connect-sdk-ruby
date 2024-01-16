#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] alias
          class TokenizePaymentRequest < Ingenico::Connect::SDK::DataObject

            attr_accessor :alias

            # @return (Hash)
            def to_h
              hash = super
              hash['alias'] = @alias unless @alias.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'alias'
                @alias = hash['alias']
              end
            end
          end
        end
      end
    end
  end
end
