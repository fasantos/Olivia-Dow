class Act < ActiveRecord::Base
  belongs_to :performance
  has_many :clips, dependent: :destroy
  has_many :paragrafs, dependent: :destroy
  accepts_nested_attributes_for :clips, :reject_if => lambda { |a| a[:adress].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :paragrafs, :reject_if => lambda { |a| a[:body].blank? }, :allow_destroy => true
end
