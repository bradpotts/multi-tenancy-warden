Rails.application.routes.draw do
	get "/things" => "things#index", :as => :things
	mount Subengine::Engine => "/"
end