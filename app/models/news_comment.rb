class NewsComment
  include Mongoid::Document
  field :posted_at, :type => DateTime
  field :content
  field :validated, :type => Boolean, :default => false
  embedded_in :news, :inverse_of => :news_comments
  referenced_in :user
  
  # Uniquement les news validées
  scope :valid, where(:validated => true)
  scope :invalid, where(:validated => false)
end