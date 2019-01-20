class User < ApplicationRecord
  validates :username,  presence: true,
                        length: { in: 4..12 },
                        uniqueness: true
  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
  validates :password,  presence: true,
                        length: { in: 6..16 }
  has_many :posts
end
