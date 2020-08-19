class User < ApplicationRecord

  has_secure_password

  has_many :orders

  validates :username, uniqueness: true, presence: true

  validates :password, length: { in: 5..15 }

end
