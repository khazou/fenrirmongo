require 'app/uploaders/picture_uploader'
require 'carrierwave/orm/mongoid'

class Picture
  include Mongoid::Document
  
  field :picture
  mount_uploader :picture, PictureUploader
  
  embedded_in :gallery, :inverse_of => :pictures

end
