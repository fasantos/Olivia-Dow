class Album < ActiveRecord::Base
  validates_presence_of :poster
  validates_presence_of :title
  has_many :images, dependent: :destroy
end
