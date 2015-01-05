class Article < ActiveRecord::Base
  validates_presence_of :author
  validates_presence_of :title
  validates_presence_of :email
  has_many :images, dependent: :destroy
  has_many :paragrafs, dependent: :destroy
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  accepts_nested_attributes_for :paragrafs, allow_destroy: true 
  accepts_nested_attributes_for :comments, allow_destroy: true, :reject_if => lambda { |a| a[:content].blank? }
end
