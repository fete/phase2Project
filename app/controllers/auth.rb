# user authentification
#not necessarily restful


#login
#get route to read the erb for login
get '/login' do 
  erb :'auth/login'
end

#post route for login
post '/login' do
  user = User.find_by(name: params[:user][:name])

  if user && user.authenticate(params[:user][:password]) 
  	session[:user_id] = user.id
  	redirect '/'
  else
  	#tell user they suck at loggin in
  	redirect '/login'
  end

end

#User signup routes
get '/signup' do
  erb :'auth/signup'
end

post '/signup' do
  user = User.new(params[:user])

  if user.save 
  	session[:user_id] = user.id #this logs in the user
  	#so if a user has a cookie with their user id filled in they are signed in
  	redirect '/'
  else
    redirect '/signup'
  end
end


get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
