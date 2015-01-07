get '/' do 
  redirect '/events/all'
end

#single event
get '/event/:id' do |id| 
  @event = Event.find(id) #@event is used only when you want erb to have access to the var
  erb :'event/single', locals: {event: @event}
end

#all events
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
  event = Event.create(params[:event])
  redirect ("/event/#{event.id}")
end

#Update
get '/event/:id/edit' do |id|
  @event = Event.find(id)
  erb :'event/edit'
end

put '/event/:id' do |id|
  event = Event.find(id)
  event.update(params[:event])
  redirect ("event/#{event.id}")
end