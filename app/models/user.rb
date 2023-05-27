class User < ApplicationRecord
  has_secure_password

  # has_many :lessons, through: :participants
  has_many :participants, foreign_key: 'user_id'
  has_many :lessons, :through => :participants
end
