#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/non_sepa_direct_debit_payment_product705_specific_input'
require 'ingenico/connect/sdk/domain/payment/non_sepa_direct_debit_payment_product730_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] date_collect
      # @attr [String] direct_debit_text
      # @attr [true/false] is_recurring
      # @attr [Ingenico::Connect::SDK::Domain::Payment::NonSepaDirectDebitPaymentProduct705SpecificInput] payment_product705_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::NonSepaDirectDebitPaymentProduct730SpecificInput] payment_product730_specific_input
      # @attr [String] recurring_payment_sequence_indicator
      # @attr [String] token
      # @attr [true/false] tokenize
      class NonSepaDirectDebitPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

        attr_accessor :date_collect

        attr_accessor :direct_debit_text

        attr_accessor :is_recurring

        attr_accessor :payment_product705_specific_input

        attr_accessor :payment_product730_specific_input

        attr_accessor :recurring_payment_sequence_indicator

        attr_accessor :token

        attr_accessor :tokenize

        # @return (Hash)
        def to_h
          hash = super
          hash['dateCollect'] = @date_collect unless @date_collect.nil?
          hash['directDebitText'] = @direct_debit_text unless @direct_debit_text.nil?
          hash['isRecurring'] = @is_recurring unless @is_recurring.nil?
          hash['paymentProduct705SpecificInput'] = @payment_product705_specific_input.to_h unless @payment_product705_specific_input.nil?
          hash['paymentProduct730SpecificInput'] = @payment_product730_specific_input.to_h unless @payment_product730_specific_input.nil?
          hash['recurringPaymentSequenceIndicator'] = @recurring_payment_sequence_indicator unless @recurring_payment_sequence_indicator.nil?
          hash['token'] = @token unless @token.nil?
          hash['tokenize'] = @tokenize unless @tokenize.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'dateCollect'
            @date_collect = hash['dateCollect']
          end
          if hash.has_key? 'directDebitText'
            @direct_debit_text = hash['directDebitText']
          end
          if hash.has_key? 'isRecurring'
            @is_recurring = hash['isRecurring']
          end
          if hash.has_key? 'paymentProduct705SpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct705SpecificInput']] unless hash['paymentProduct705SpecificInput'].is_a? Hash
            @payment_product705_specific_input = Ingenico::Connect::SDK::Domain::Payment::NonSepaDirectDebitPaymentProduct705SpecificInput.new_from_hash(hash['paymentProduct705SpecificInput'])
          end
          if hash.has_key? 'paymentProduct730SpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct730SpecificInput']] unless hash['paymentProduct730SpecificInput'].is_a? Hash
            @payment_product730_specific_input = Ingenico::Connect::SDK::Domain::Payment::NonSepaDirectDebitPaymentProduct730SpecificInput.new_from_hash(hash['paymentProduct730SpecificInput'])
          end
          if hash.has_key? 'recurringPaymentSequenceIndicator'
            @recurring_payment_sequence_indicator = hash['recurringPaymentSequenceIndicator']
          end
          if hash.has_key? 'token'
            @token = hash['token']
          end
          if hash.has_key? 'tokenize'
            @tokenize = hash['tokenize']
          end
        end
      end
    end
  end
end
