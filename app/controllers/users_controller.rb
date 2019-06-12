class UsersController < ApplicationController

  get '/signup' do
    erb :"/users/create_user"
  end

  post '/users' do
    binding.pry
  end

end
