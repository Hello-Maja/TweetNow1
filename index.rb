# GET ================================================

get '/' do 
	erb :tweet_form
end

# POST ===============================================

post '/tweetit' do
  @text = params[:text]
  if request.xhr?
  	erb :_waiting, layout: false 
  end
  redirect "/"
end
