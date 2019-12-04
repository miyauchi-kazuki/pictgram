class User < ApplicationRecord
  validates :name, presence: true 
  validates :name, length: { in: 1..32 }
  validates :email, presence: true
    validates :email, fromat: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :password, presence: true
  validates :password, format: { with: /\A[a-z0-9]+\z/i }, length: { in: 8..32 }
  
  has_secure_password
end