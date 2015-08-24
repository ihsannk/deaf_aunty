get '/' do
  @aunty = params[:aunty]
  puts @aunty
  # Look in app/views/index.erb
  erb :index
end

post '/aunty' do
  speech = params[:user_input]
  if speech == speech.upcase
    answer = "Na na na na Batman"
    #redirect to("/?aunty=Na na na na Batman")
    #puts "Na na na na Batman"
  else
    answer = "Speak up, kiddo!"
    #redirect to("/?aunty=Speak up, kiddo!")
    #puts "Speak up, kiddo!"
  end
  redirect to("/?aunty=#{answer}")
end
