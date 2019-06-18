class UsersController < ApplicationController

  get '/signup' do
    if !Helpers.is_logged_in?(session)
      erb :"/users/create_user"
    else
      redirect '/tweets'
    end
  end

  post '/signup' do
    if entered_username? && entered_email? && entered_password?
      @user = User.create(username: params["username"], email: params["email"], password: params["password"])
      session[:user_id] = @user.id
      redirect '/tweets/index'
    else
      redirect '/signup'
    end
  end

  get '/login' do
    if !Helpers.is_logged_in?(session)
      erb :"/users/login"
    else
      erb :'/tweets'
    end
  end

  post '/login' do
    user = User.find_by(username: params["username"])
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
