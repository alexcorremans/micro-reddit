class Post < ApplicationRecord
  URL_REGEXP = /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?\z/ix
  validates :url, presence: true,
                  format: { with: URL_REGEXP }
  belongs_to :user
  has_many :comments
end
