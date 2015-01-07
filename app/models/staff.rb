class Staff < ActiveRecord::Base
  validates_presence_of :name
  has_many :images, dependent: :destroy
  has_many :paragrafs, dependent: :destroy
  accepts_nested_attributes_for :images, :reject_if => lambda { |a| a[:image_file].blank? }
  accepts_nested_attributes_for :paragrafs, :reject_if => lambda { |a| a[:body].blank? }, :allow_destroy => true
end
