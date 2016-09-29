require "mtwarden/braintree_plan_fetcher"
namespace :mtwarden do
	desc "Import plans from Braintree"
		task :import_plans => :environment do
		Mtwarden::BraintreePlanFetcher.store_locally
	end
end