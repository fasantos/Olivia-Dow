class User < ActiveRecord::Base
  acts_as_authentic do |c|
 c.validate_password_field = false
end
end
