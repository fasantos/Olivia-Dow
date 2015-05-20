class User < ActiveRecord::Base
  acts_as_authentic do |c|
    c.validate_password_field = false
    c.logged_in_timeout = 2.hours #default 
  end
end
