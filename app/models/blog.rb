class Blog < ApplicationRecord
  belongs_to :topic
  validates :title, :body, presence: true

  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged
end
