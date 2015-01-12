class Album < ActiveRecord::Base
  #validates_presence_of :poster
  validates_presence_of :title
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, :reject_if => lambda { |a| a[:image_file].blank? }, :allow_destroy => true
end
