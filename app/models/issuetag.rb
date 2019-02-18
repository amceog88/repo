class Issuetag < ApplicationRecord
  has_many :issue_tag_ships, dependent: :destroy
  has_many :issues,  through: :issue_tag_ships
end
