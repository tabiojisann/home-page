class Message < ApplicationRecord
  belongs_to :user
  # validates  :text, :image, presence: true

  mount_uploader :image, ImageUploader
end
