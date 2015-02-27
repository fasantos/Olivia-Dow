class Performance < ActiveRecord::Base
  #validates_presence_of :poster
  validates_presence_of :title
  has_many :images, dependent: :destroy
  has_many :acts, dependent: :destroy
  has_many :clips, through: :acts,  dependent: :destroy
  has_many :paragrafs, through: :acts, dependent: :destroy
  accepts_nested_attributes_for :images, :reject_if => lambda { |a| a[:image_file].blank? }
  accepts_nested_attributes_for :acts, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
