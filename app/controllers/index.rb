# GET ================================================

get '/' do 
	erb :index
end

# POST ===============================================

post '/tweetit' do
  @text = params[:text]
  # response = Twitter.update(@text)
    begin response = Twitter.update(@text).to_json   
	  	if !response      
	  		raise "something went wrong!"  
	  	  return "fayle"  
 
	  	else
	  		return "success"
	  		# redirect_to show_path,:notice =>"Success"  
	  	end
	 rescue
	 		p "rescue me"
	 		return "FAYLE YOU!"
	  		# return "fayle"  
	  		# redirect_to show_path,:notice =>"Hey Loser, Twitter says you cannot post same twice"
	 
  # if request.xhr?
  	erb :_waiting, layout: false 
  # else
  	# redirect "/"
   	end
end
