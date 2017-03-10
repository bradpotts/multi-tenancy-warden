module Mtwarden
  class BraintreePlanFetcher

    def self.store_locally
      Braintree::Plan.all.each do |plan|
          if local_plan = Mtwarden::Plan.find_by(braintree_id: plan.id)
          local_plan.update_attributes({
          :name => plan.name,
          :price => plan.price
        })
        else
          Mtwarden::Plan.create({
            :name => plan.name,
            :price => plan.price,
            :braintree_id => plan.id
          })
        end
      end
    end

  end
end