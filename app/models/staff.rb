class Staff < ActiveRecord::Base
  validates_presence_of :name
  has_many :images, dependent: :destroy
  has_many :paragrafs, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  accepts_nested_attributes_for :paragrafs, allow_destroy: true
end
