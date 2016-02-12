class BookmarkManager < Sinatra::Base

  get '/welcome' do
    @user = session_user.user_name
    erb :'users/welcome'
  end

  delete '/goodbye' do
    session[:user_id] = nil
    flash.keep[:notice_goodbye] = 'We are done... don\'t come crying back to me when you loose all your bookmarks'
    redirect '/'
  end
end
