class Portfolio < ApplicationRecord
  validates :title, :body, :main_image, :thumb_image, presence: true

  scope :rails, -> { where(subtitle: "Ruby on Rails") }
end
