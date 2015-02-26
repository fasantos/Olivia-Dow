class Contact < MailForm::Base
  
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations
  
  attr_accessor :name, :email, :message, :nickname
    
  validates :name, presence: true
  
  validates :email, presence: true
  
  validates :message, presence: true
  
  validates :nickname, presence: false
  
end
