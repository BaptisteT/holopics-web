class Shape < ActiveRecord::Base
  #Interpolation 
  Paperclip.interpolates :file_name do |attachment, style|
    "image_#{attachment.instance.id.to_s}"
  end

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :avatar, path: "shapes/:file_name"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end