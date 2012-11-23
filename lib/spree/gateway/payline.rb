module Spree
  class Gateway
    class Payline < Gateway
      preference :merchant_id, :string
      preference :merchant_access_key, :string
      preference :contract_number, :string
      
      def provider_class
        ActiveMerchant::Billing::Payline
      end
    end
  end
end
