class Comment < ActiveRecord::Base
  belongs_to :article
  
  attr_accessor :nickname
  
  validates_presence_of :author
  validates_presence_of :body
  validates_presence_of :email
  validates :nickname, presence: false
  #validates_format_of :email, with: /regex/i
end
