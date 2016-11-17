Rails.application.routes.draw do
  get 'messages/reply'

   resources :events

  root to: "welcome#home"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :check

  resource :messages do
    collection do
      post 'reply'
      get 'send_sms'
    end
  end
  
end
