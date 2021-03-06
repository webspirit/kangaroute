# == Route Map
#
#                   Prefix Verb   URI Pattern                       Controller#Action
#                     root GET    /                                 pages#index
#         new_user_session GET    /users/sign_in(.:format)          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
#            user_password POST   /users/password(.:format)         devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
#                          PATCH  /users/password(.:format)         devise/passwords#update
#                          PUT    /users/password(.:format)         devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)           devise/registrations#cancel
#        user_registration POST   /users(.:format)                  devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)          devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)             devise/registrations#edit
#                          PATCH  /users(.:format)                  devise/registrations#update
#                          PUT    /users(.:format)                  devise/registrations#update
#                          DELETE /users(.:format)                  devise/registrations#destroy
#        user_confirmation POST   /users/confirmation(.:format)     devise/confirmations#create
#    new_user_confirmation GET    /users/confirmation/new(.:format) devise/confirmations#new
#                          GET    /users/confirmation(.:format)     devise/confirmations#show
#                    rides GET    /rides(.:format)                  rides#index
#                          POST   /rides(.:format)                  rides#create
#                 new_ride GET    /rides/new(.:format)              rides#new
#                edit_ride GET    /rides/:id/edit(.:format)         rides#edit
#                     ride GET    /rides/:id(.:format)              rides#show
#                          PATCH  /rides/:id(.:format)              rides#update
#                          PUT    /rides/:id(.:format)              rides#update
#                          DELETE /rides/:id(.:format)              rides#destroy
#

Rails.application.routes.draw do
	root to: 'pages#index'
  devise_for :users
  resources :rides
end
