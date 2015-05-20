# app/models/user_session.rb
class UserSession < Authlogic::Session::Base
  logout_on_timeout true   
end
