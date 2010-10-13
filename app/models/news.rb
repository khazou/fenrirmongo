class News
  include Mongoid::Document
  field :title
  field :posted_at, :type => DateTime
  field :content
  key :title
  embeds_many :news_comments
end