require 'csv'

namespace :import do
	
	desc "import products from csv"
	task products: :environment do 
		 filename = File.join Rails.root, "bench_inventory.csv"
		 counter = 0

	CSV.foreach(filename) do |row|
		rep, bench, traffic, primary, direction, secondary, cor, city, zip, latitude, longitude, panel = row
	product = Product.create(rep_id: rep, bench_number: bench, traffic: traffic, primary_street: primary, direction: direction, secondary_street: secondary, cor: cor, city: city, zip: zip, latitude: latitude, longitude: longitude)
	puts "#{bench} - #{product.errors.full_messages.join(",")}" if product.errors.any?
	counter += 1 if product.persisted?

	end

	puts "imported #{counter} products"
	end
end