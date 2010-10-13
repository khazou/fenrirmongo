class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  field :admin, :type => Boolean, :default => false
  
  references_many :news_comments
  references_one :preregistration
end
