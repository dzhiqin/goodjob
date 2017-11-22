class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :user_profile
  has_many :resumes
  has_many :applied_jobs ,through: :resumes,source: :job
  def admin?
    self.is_admin
  end
end
