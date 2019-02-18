class User < ApplicationRecord
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  has_many :issues, dependent: :destroy
  has_one_attached :avatar

end
