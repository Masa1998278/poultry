#class User < ApplicationRecord
 # validates :name, presence: true
  #validates :email, presence: true
  #validates :password, presence: true

  #has_secure_password

#  has_many :topics
 # has_many :favorites
  #has_many :favorite_topics, through: :favorites, source: 'topic'
#end


class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 15 }
  
  validates :email, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: {with: VALID_EMAIL_REGEX}
  
  validates :password, length: {in: 8..32}
  validates :password, presence: true
  VALID_PASSWORD_REGEX = /\A(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)\z/
  validates :password, format: {with: VALID_PASSWORD_REGEX}

  has_secure_password
  
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'

end