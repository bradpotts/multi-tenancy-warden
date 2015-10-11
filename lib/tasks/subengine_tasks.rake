require "subengine/braintree_plan_fetcher"
namespace :subengine do
	desc "Import plans from Braintree"
		task :import_plans => :environment do
		Subengine::BraintreePlanFetcher.store_locally
	end
end