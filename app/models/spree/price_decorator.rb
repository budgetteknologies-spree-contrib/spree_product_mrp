Spree::Price.class_eval do
	money_methods :mrp

	def mrp=(mrp)
    self[:mrp] = Spree::LocalizedNumber.parse(mrp)
  end

	def percentage_off
		unless mrp.nil? || mrp == 0
			off = ((mrp-amount)/mrp)*100
		  return off.to_int
		else
			return 0
		end
	end
end
