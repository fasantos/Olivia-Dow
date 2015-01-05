class Performance < ActiveRecord::Base
  validates_presence_of :poster
  validates_presence_of :title
  has_many :acts, dependent: :destroy
  has_many :clips, through: :acts,  dependent: :destroy
  has_many :paragrafs, through: :acts, dependent: :destroy
end
