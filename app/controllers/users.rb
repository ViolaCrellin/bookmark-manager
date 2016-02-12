class BookmarkManager < Sinatra::Base

  get '/' do
    @new_user = User.new
    erb :'users/sign_up'
  end

  post '/sign_in' do
    @new_user = User.new
    @user_existing = User.authenticate(params[:existing_user_name], params[:existing_password])
    if @user_existing
      session[:user_id] = @user_existing.id
      @user = session_user.user_name
      redirect '/welcome'
    end

    if @user.nil? && User.last(user_name: params[:existing_user_name])
       flash.now[:notice_user_credentials] =  "Computer says no"
       erb :'users/sign_up'
    else
      flash.now[:notice_user_credentials] =  "Who are you?"
      erb :'users/sign_up'
    end
  end

  post '/sign_up' do
    @new_user = User.new(user_name: params[:user_name], password: params[:password], email: params[:email], password_confirmation: params[:password_confirmation])

    if @new_user.save
      session[:user_id] = @new_user.id
      redirect '/welcome'
    else
      if User.last(params[:email])
        flash.now[:notice_email]= 'Ooops, your email looks a bit fishy'
      else
        flash.now[:notice]= 'Ooops, your passwords didn\'t match'
      #@user.password == @user.password_confirmation
      end
      erb :'users/sign_up'
    end
  end



end
