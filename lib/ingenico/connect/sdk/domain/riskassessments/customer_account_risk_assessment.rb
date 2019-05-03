#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      class CustomerAccountRiskAssessment < Ingenico::Connect::SDK::DataObject

        # true/false
        attr_accessor :has_forgotten_password

        # true/false
        attr_accessor :has_password

        def to_h
          hash = super
          add_to_hash(hash, 'hasForgottenPassword', @has_forgotten_password)
          add_to_hash(hash, 'hasPassword', @has_password)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('hasForgottenPassword')
            @has_forgotten_password = hash['hasForgottenPassword']
          end
          if hash.has_key?('hasPassword')
            @has_password = hash['hasPassword']
          end
        end
      end
    end
  end
end
