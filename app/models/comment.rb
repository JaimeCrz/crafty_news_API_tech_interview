class Comment < ApplicationRecord
  validates_presence_of :body

  belongs_to :article, optional: true
  belongs_to :user
end
