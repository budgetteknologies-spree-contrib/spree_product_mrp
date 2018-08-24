Spree::Product.class_eval do
	delegate :display_mrp,:mrp,"#{:mrp}=",
		:percentage_off, to: :find_or_build_master
end
