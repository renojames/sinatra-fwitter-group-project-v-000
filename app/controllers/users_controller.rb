class UsersController < ApplicationController

  get '/signup' do
    erb :"/users/create_user"
  end

  post '/users' do
    binding.pry
  end

def entered_username?
  if !!params["username"] && params["username"] != ""
    true
  else
    false
  end
end

def entered_email?
  if !!params["email"] && params["email"] != ""
    true
  else
    false
  end
end

def entered_password?
  if !!params["password"] && params["password"] != ""
    true
  else
    false
  end
end

end
