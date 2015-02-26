class Article < ActiveRecord::Base
  validates_presence_of :author
  validates_presence_of :title
  validates_presence_of :email
  #validates_format_of :email, with: /regex/i
  has_many :images, dependent: :destroy
  has_many :paragrafs, dependent: :destroy
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :images, :reject_if => lambda { |a| a[:image_file].blank? }
  accepts_nested_attributes_for :paragrafs, :reject_if => lambda { |a| a[:body].blank? }, :allow_destroy => true 
  accepts_nested_attributes_for :comments, :reject_if => lambda { |a| a[:content].blank? || a[:nickname].present?}, allow_destroy: true
end
