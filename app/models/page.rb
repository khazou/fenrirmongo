# Page model
# @author Khazou
class Page
  include Mongoid::Document
  field :title
  field :keywords
  field :content
  
  attr_protected :_id
end