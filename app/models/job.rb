class Job < ApplicationRecord
  scope :recent, ->{order("created_at DESC")}
  scope :published, ->{where(is_hidden:false)}
  has_many :resumes
  has_many :applied_users ,through: :resumes,source: :user
  mount_uploader :logo,LogoUploader
  validates_presence_of :company_name,:title,:contact_email,:wage_lower_bound,:wage_upper_bound,:remuneration,:official_website,:work_location,:number_of_hiring
end
