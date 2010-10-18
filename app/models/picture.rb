class Picture
  include Mongoid::Document
  require "paperclip"
  
  embedded_in :gallery, :inverse_of => :pictures
  field :picture_file_name
  field :picture_content_type
  field :picture_updated_at
  has_attached_file :picture, :styles => {:mini => "200x150#"}
end
