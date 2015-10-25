module Mtwarden

	class Member < ActiveRecord::Base
		belongs_to :account, :class_name => "Mtwarden::Account"
		belongs_to :user, :class_name => "Mtwarden::User"
	end

end