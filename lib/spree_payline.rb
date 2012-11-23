require "spree_payline/version"

module SpreePayline
  class Engine < Rails::Engine
    engine_name 'spree_payline'
    
    config.autoload_paths += ["#{config.root}/lib"]
    
    initializer "spree.payline.gateway.payment_methods", :after => "spree.register.payment_methods" do |app|
      app.config.spree.payment_methods << Spree::Gateway::Payline
    end
  end
end
