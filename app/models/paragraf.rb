class Paragraf < ActiveRecord::Base
  belongs_to :staff
  belongs_to :article
  belongs_to :album
  belongs_to :act
  validates_presence_of :body
end
