get '/' do 
  redirect '/events/all'
end



get '/events/all' do
  redirect '/login' unless current_user
  @events = current_user.events 
  erb :'event/all'
end


#create
get '/events/new' do 
  erb :'event/new' 
end


post '/events' do 
  params[:event][:user_id] = current_user.id 
  redirect ("/event/#{event.id}")
end

