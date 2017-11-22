class Job < ApplicationRecord
  scope :recent, ->{order("created_at DESC")}
  scope :published, ->{where(is_hidden:false)}
  has_many :resumes
  has_many :applied_users ,through: :resumes,source: :user

end
