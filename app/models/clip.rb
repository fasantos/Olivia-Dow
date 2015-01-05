class Clip < ActiveRecord::Base
  belongs_to :act
  validates_presence_of :adress
end
