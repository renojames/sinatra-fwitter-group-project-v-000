class UsersController < ApplicationController

  get '/signup' do
    erb :"/users/create_user"
  end

  post '/signup' do
    if entered_username? && entered_email? && entered_password?
      @user = User.create(username: params["username"], email: params["email"], password: params["password"])
    end
    binding.pry
  end


private

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
