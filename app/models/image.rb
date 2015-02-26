class Image < ActiveRecord::Base
  belongs_to :staff
  belongs_to :article
  belongs_to :album
  belongs_to :performance
  #validates_presence_of :data, :filename, :filetype
  
  def image_file=(input_data)
    self.filename = input_data.original_filename
    self.filetype = input_data.content_type.chomp
    self.data = input_data.read
  end
end
