class IssueGroupShip < ApplicationRecord
  validates :issue_id, uniqueness: { scope: :group_id }

  belongs_to :group
  belongs_to :issue
end
