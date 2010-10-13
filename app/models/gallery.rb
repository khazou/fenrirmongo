class Gallery
  include Mongoid::Document
  field :title
  embeds_many :pictures
  key :title
end