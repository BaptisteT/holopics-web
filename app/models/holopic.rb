class Holopic < ActiveRecord::Base
	validates :image, presence: true
  validates_attachment_presence :avatar

  #Interpolation 
  Paperclip.interpolates :file_name do |attachment, style|
    "image_#{attachment.instance.id.to_s}"
  end

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :avatar, styles: { small: '145x220#' }, path: ":style/:file_name"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
