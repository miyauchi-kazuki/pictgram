class User < ApplicationRecord
  validates :name, presence: true 
  validates :name, length: { in: 1..32 }
  validates :email, presence: true
  validates :email, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :password, presence: true
  validates :password, format: ' with: /\A(?=.*?[a-z]) (?=.*?\d) [a-z\d] {8,32}+\z/i'
  has_secure_password
end