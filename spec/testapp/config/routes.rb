Rails.application.routes.draw do
  mount Mtwarden::Engine => "/mtwarden"
end
