class Job < ApplicationRecord
  has_many :resumes
  has_many :applied_users ,through: :resumes,source: :user

end
