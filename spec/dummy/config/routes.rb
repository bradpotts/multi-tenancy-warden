Rails.application.routes.draw do
	get "/things" => "things#index", :as => :things
	mount Mtwarden::Engine => "/"
end