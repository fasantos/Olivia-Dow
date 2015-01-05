class Act < ActiveRecord::Base
  belongs_to :performance
  has_many :clips, dependent: :destroy
  has_many :paragrafs, dependent: :destroy
end
