get '/' do 
  redirect '/events/all'
end

get '/events/all' do
  redirect '/login' unless current_user
  @events = current_user.events 
  erb :'event/all'
end