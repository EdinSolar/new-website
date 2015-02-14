class Post < ActiveRecord::Base
  validates :title, length: { minimum: 2 }
  validates :body, presence: true
end
