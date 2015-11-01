module Spree
  class Gateway
    class Payline < Gateway
      preference :merchant_id, :string
      preference :merchant_access_key, :string
      preference :contract_number, :string
      
      #attr_accessor :preferred_merchant_id, :preferred_merchant_access_key, :preferred_contract_number
      
      def provider_class
        ActiveMerchant::Billing::PaylineGateway
      end
    end
  end
end
