module Cdgsubengine
  class Member < ActiveRecord::Base
    belongs_to :account, :class_name => "Cdgsubengine::Account"
    belongs_to :user, :class_name => "Cdgsubengine::User"
  end
end