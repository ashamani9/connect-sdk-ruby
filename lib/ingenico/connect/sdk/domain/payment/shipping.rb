#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/address_personal'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class Shipping < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::AddressPersonal}
        attr_accessor :address

        # String
        attr_accessor :address_indicator

        # String
        attr_accessor :comments

        # String
        attr_accessor :email_address

        # String
        attr_accessor :first_usage_date

        # true/false
        attr_accessor :is_first_usage

        # String
        attr_accessor :tracking_number

        # String
        attr_accessor :type

        def to_h
          hash = super
          add_to_hash(hash, 'address', @address)
          add_to_hash(hash, 'addressIndicator', @address_indicator)
          add_to_hash(hash, 'comments', @comments)
          add_to_hash(hash, 'emailAddress', @email_address)
          add_to_hash(hash, 'firstUsageDate', @first_usage_date)
          add_to_hash(hash, 'isFirstUsage', @is_first_usage)
          add_to_hash(hash, 'trackingNumber', @tracking_number)
          add_to_hash(hash, 'type', @type)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('address')
            if !(hash['address'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['address']]
            end
            @address = Ingenico::Connect::SDK::Domain::Payment::AddressPersonal.new_from_hash(hash['address'])
          end
          if hash.has_key?('addressIndicator')
            @address_indicator = hash['addressIndicator']
          end
          if hash.has_key?('comments')
            @comments = hash['comments']
          end
          if hash.has_key?('emailAddress')
            @email_address = hash['emailAddress']
          end
          if hash.has_key?('firstUsageDate')
            @first_usage_date = hash['firstUsageDate']
          end
          if hash.has_key?('isFirstUsage')
            @is_first_usage = hash['isFirstUsage']
          end
          if hash.has_key?('trackingNumber')
            @tracking_number = hash['trackingNumber']
          end
          if hash.has_key?('type')
            @type = hash['type']
          end
        end
      end
    end
  end
end
