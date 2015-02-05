require "cdgsubengine/braintree_plan_fetcher"
namespace :cdgsubengine do
  desc "Import plans from Braintree"
  task :import_plans => :environment do
    Cdgsubengine::BraintreePlanFetcher.store_locally
  end
end