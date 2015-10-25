module Mtwarden
	class User < ActiveRecord::Base
		include Gravtastic
		gravtastic
		has_secure_password
	end
end