module Spree
  module DefaultPriceMrp
    extend ActiveSupport::Concern
    included do
      delegate :display_mrp,:mrp,:mrp=,
        :percentage_off, to: :find_or_build_default_price
    end
  end
end
