class BookmarkManager < Sinatra::Base


  get '/tags/:name' do
    tag = Tag.all(name: params[:name])
    @links = tag ? tag.links : []
    erb :'links/search_tag'
  end



end
