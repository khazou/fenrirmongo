class Preregistration
  include Mongoid::Document
  references_one :user
  
  field :first_name
  field :last_name
end