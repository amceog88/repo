class IssueTagShip < ApplicationRecord
  validates :issuetag_id, uniqueness: { scope: :issue_id }

  belongs_to :issuetag
  belongs_to :issue
end
