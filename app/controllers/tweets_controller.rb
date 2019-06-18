class TweetsController < ApplicationController

  get '/tweets' do
    @user = User.find(session[:user_id])

    if Helpers.is_logged_in?(session)
      erb :"/tweets/tweets"
    else
      redirect '/login'
    end
  end

end
