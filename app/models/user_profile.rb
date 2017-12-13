class UserProfile < ApplicationRecord
  mount_uploader :attachment,AttachmentUploader
  mount_uploader :avatar,AvatarUploader
  belongs_to :user
end
