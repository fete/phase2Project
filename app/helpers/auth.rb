#checks if we have a session user id
def current_user
  if session[:user_id]
  	return User.find(session[:user_id])
  else 
  	return nil
  end
end