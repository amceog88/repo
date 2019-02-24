class User < ApplicationRecord
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  has_many :issues, dependent: :destroy
  has_one_attached :avatar

  has_many :user_group_ships, dependent: :destroy
  has_many :groups, through: :user_group_ships


  def last_admin
    self.role ==  "admin" && User.all.where(role: "admin").count <= 1
  end

  def is_member?(group)
    group.users.include?(self)
  end

  def current_issue
    group_id = self.groups.pluck(:id)
    groups_issue = IssueGroupShip.where(group_id: group_id).pluck(:issue_id)
    current_issue = Issue.where(id: (self.issues.pluck(:id) << groups_issue).uniq)
  end
end
