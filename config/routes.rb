Rails.application.routes.draw do
  get '/auth/artsy'
  get '/auth/artsy/callback', to: 'invite#index'
  get '/', to: redirect('/auth/artsy')

  post '/submit' => 'invite#submit'
end
