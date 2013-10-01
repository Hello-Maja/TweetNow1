# GET ================================================

get '/' do 
	erb :index
end

# POST ===============================================

post '/tweetit' do
  @text = params[:text]
  if request.xhr?
  	erb :_waiting, layout: false 
  else
  	redirect "/"
  end
end
